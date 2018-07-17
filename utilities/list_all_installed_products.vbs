Set wi = CreateObject("WindowsInstaller.Installer")

For Each p In wi.Products
    n = wi.ProductInfo(p, "ProductName")
    v = wi.ProductInfo(p, "VersionString")
    WScript.Echo p & " " & n & " // " & v
Next
