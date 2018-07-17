msi_file = WScript.Arguments(0)

Set wi = CreateObject("WindowsInstaller.Installer")

Const open_database_mode_read_only = 0
Set db = wi.OpenDatabase(msi_file, open_database_mode_read_only)

Set view = db.OpenView("select Value from Property where Property = 'ProductCode'")
view.Execute
Set rec = view.Fetch
WScript.Echo rec.StringData(1)

Set view = db.OpenView("select Value from Property where Property = 'ProductVersion'")
view.Execute
Set rec = view.Fetch
WScript.Echo rec.StringData(1)
