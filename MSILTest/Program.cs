using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using dnlib.DotNet;
using dnlib.DotNet.Emit;

namespace MSILTest
{
    internal class Program
    {
        public static void Main(string[] args)
        {
            var files = Directory.GetFiles("base", "*.exe");

            var module = ModuleDefMD.Load("./ILTest.exe");

            var virtAttr = module.EntryPoint.CustomAttributes[0];
            var noRenameAttr = module.EntryPoint.DeclaringType.CustomAttributes[0];
            var set = new HashSet<Code>();
            foreach (var file in files)
            {
                try
                {
                    var tmp = ModuleDefMD.Load(file);
                    while (tmp.Types.Count > 0)
                    {
                        var type = tmp.Types[0];
                        tmp.Types.RemoveAt(0);
                        if (type.IsGlobalModuleType || type.FullName.Equals("<Module>", StringComparison.OrdinalIgnoreCase))
                            continue;
                        
                        type.CustomAttributes.Add(noRenameAttr);
                        type.Namespace = "eaztool";
                        foreach (var method in type.Methods)
                        {
                            method.CustomAttributes.Add(virtAttr);
                            method.ImplAttributes = MethodImplAttributes.NoInlining | MethodImplAttributes.NoOptimization;
                            if (method.Name.ToString().Equals("main", StringComparison.OrdinalIgnoreCase))
                                method.Name = type.Name + "_" + method.Name;
                            foreach (var ins in method.Body.Instructions)
                                set.Add(ins.OpCode.Code);
                        }
                        module.Types.Add(type);
                    }
                }
                catch (Exception e)
                {
                    Console.WriteLine(e);
                }
            }
            
            module.EntryPoint.CustomAttributes.RemoveAt(0);
            module.Write("./patch_virt_iltest.exe");
            
            foreach (var type in module.Types)
            foreach (var method in type.Methods)
            {
                if (method.CustomAttributes.Count > 0 && method.CustomAttributes.Contains(virtAttr))
                    method.CustomAttributes.Remove(virtAttr);
            }
            
            module.Write("./patch_iltest.exe");
            
            Console.WriteLine($"Total {set.Count}: {string.Join(", ", set.ToList().ConvertAll(c => c.ToString()))}");

            Console.WriteLine("\n\n");
            
            var missing = Enum.GetValues(typeof(Code)).Cast<Code>().ToList().Where(c => !set.Contains(c) && !(c == Code.UNKNOWN1 || c == Code.UNKNOWN2 || c.ToString().StartsWith("Prefix"))).ToList().ConvertAll(c => c.ToString());
            
            Console.WriteLine($"Missing {missing.Count}: {string.Join(", ", missing)}");

            
            //Console.ReadKey();
        }
    }
}