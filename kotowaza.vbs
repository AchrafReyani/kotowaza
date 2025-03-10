Set WshShell = CreateObject("WScript.Shell") 
scriptPath = CreateObject("Scripting.FileSystemObject").GetParentFolderName(WScript.ScriptFullName)
WshShell.Run "powershell -ExecutionPolicy Bypass -File """ & scriptPath & "\kotowaza.ps1""", 0, False