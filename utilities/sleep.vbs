If WScript.Arguments.Count < 1 Then
    WScript.Echo "Usage: " & WScript.ScriptName & " <minutes>"
    WScript.Quit
End If

Set sh = CreateObject("WScript.Shell")
minutes = WScript.Arguments(0)
seconds = minutes * 60

msg = "This window will automatically dismiss in " & seconds & " seconds."
title = "Waiting..."

Const ok_button = 0
Const info_mark = 64

button = sh.Popup(msg, seconds, title, ok_button + info_mark)

