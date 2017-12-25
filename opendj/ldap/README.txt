::INSTALL (Windows Dev Environment)

** Setup OpenDJ on Windows
(Extract folder '/opendj' from 'OpenDJ-3.0.x.zip' from github opendj
cd dev
./install_opendj.bat

:: UPDATE Dev Environment
bash -c ./update_opendj_configuration.sh

::CONTROL PANEL
opendj\bat\control-panel.bat

::START
opendj\bat\start-ds.bat

::STOP
opendj\bat\stop-ds.bat

