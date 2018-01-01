mkdir c:\Users\ContainerAdministrator\Documents\WindowsPowerShell
mkdir c:\Users\ContainerAdministrator\Documents\WindowsPowerShell\Modules
mkdir c:\Users\ContainerAdministrator\Documents\WindowsPowerShell\Modules\Install-MySql
mkdir c:\Users\ContainerAdministrator\Documents\WindowsPowerShell\Modules\Install-MySql\Config

copy c:\mysql\Install-MySql.psm1 c:\Users\ContainerAdministrator\Documents\WindowsPowerShell\Modules\Install-MySql\Install-MySql.psm1
copy c:\mysql\Install-MySql.psd1 c:\Users\ContainerAdministrator\Documents\WindowsPowerShell\Modules\Install-MySql\Install-MySql.psd1


powershell Import-Module Install-MySql