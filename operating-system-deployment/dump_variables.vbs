' Dump task sequence variables, by William Jackson (w@utexas.edu)

Set sh = CreateObject("WScript.Shell")
Set fso = CreateObject("Scripting.FileSystemObject")
Set e = CreateObject("Microsoft.SMS.TSEnvironment")

a = sh.ExpandEnvironmentStrings("%windir%") & "\Temp\_task_sequence_variables.log"

Const OVERWRITE = True
Const NO_UNICODE = False
Set f = fso.CreateTextFile(a, OVERWRITE, NO_UNICODE)

f.WriteLine "Time = " & Now

For Each v In e.GetVariables
    f.WriteLine v & " = " & e(v)
Next

f.Close
