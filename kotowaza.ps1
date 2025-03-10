$wallpaperFolder = "D:\kotowaza" #Replace with your own path/folder of wallpapers
$files = Get-ChildItem -Path $wallpaperFolder -Filter *.png # Change "*.png" to "*.jpg" or any other file extension if your wallpapers are not in PNG format
$randomFile = $files | Get-Random
$wallpaperPath = $randomFile.FullName

Add-Type -TypeDefinition @"
using System;
using System.Runtime.InteropServices;
public class Wallpaper {
    [DllImport("user32.dll", CharSet = CharSet.Auto)]
    public static extern int SystemParametersInfo(int uAction, int uParam, string lpvParam, int fuWinIni);
}
"@
[Wallpaper]::SystemParametersInfo(20, 0, $wallpaperPath, 3)
