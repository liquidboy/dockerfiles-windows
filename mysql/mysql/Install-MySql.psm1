#################################################################################  
##  
## MySql unattended install 
## Author: Jose Fajardo
## Date : 1st Jan 2018
## Company: Jose Fajardo
##
################################################################################

Write-Host "Install-MySql Module loaded" -ForegroundColor DarkGreen

Function Install-MySql
{


    Param
    (
        [Parameter(Mandatory=$true)]
        [Alias('User')][String]$pgUser,

        [Parameter(Mandatory=$true)]
        [Alias('Password')][String]$pgPassword,

        [Parameter(Mandatory=$false)]
        [Alias('Locale')][String]$pgLocale="English, United States",

        [Parameter(Mandatory=$false)]
        [Alias('Port')][int]$pgPort=3302,

        [Parameter(Mandatory=$false)]
        [Alias('ServiceName')][String]$pgServiceName="mysql"
    )

    Write-Host "Starting...";
    # break;



    $exe = "C:\MySQL\bin\mysqld.exe"

    $arguments1 = "--initialize --console --explicit_defaults_for_timestamp"
    &$exe $arguments1

    $arguments2 = "--install"
    &$exe $arguments2

    Remove-Item c:\mysql.zip -Force

    Start-Service mysql

    Write-Host "mysql has been installed";
}



Export-ModuleMember -Function Install-MySql;