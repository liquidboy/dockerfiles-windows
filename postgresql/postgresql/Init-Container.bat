mkdir c:\Users\ContainerAdministrator\Documents\WindowsPowerShell
mkdir c:\Users\ContainerAdministrator\Documents\WindowsPowerShell\Modules
mkdir c:\Users\ContainerAdministrator\Documents\WindowsPowerShell\Modules\Install-Postgres
mkdir c:\Users\ContainerAdministrator\Documents\WindowsPowerShell\Modules\Install-Postgres\Config

copy c:\postgresql\Install-Postgres.psm1 c:\Users\ContainerAdministrator\Documents\WindowsPowerShell\Modules\Install-Postgres\Install-Postgres.psm1
copy c:\postgresql\Install-Postgres.psd1 c:\Users\ContainerAdministrator\Documents\WindowsPowerShell\Modules\Install-Postgres\Install-Postgres.psd1
copy c:\postgresql\Config\pg_hba.conf c:\Users\ContainerAdministrator\Documents\WindowsPowerShell\Modules\Install-Postgres\Config\pg_hba.conf
copy c:\postgresql\Config\postgresql.conf c:\Users\ContainerAdministrator\Documents\WindowsPowerShell\Modules\Install-Postgres\Config\postgresql.conf

powershell Import-Module Install-Postgres