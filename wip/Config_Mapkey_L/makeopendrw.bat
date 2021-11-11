@ECHO off
for /f "eol=; tokens=*" %%I in ('powershell Get-Clipboard') do set "clipboard=%%I"
echo mapkey .lopendrw @MAPKEY_LABEL[]OpenSameNameDRW;\ > C:\Users\user\ptc_start\Config_Mapkey_L\OpenSameNameDrw.pro
echo mapkey(continued) ~ Command `ProCmdModelOpen` ;\ >> C:\Users\user\ptc_start\Config_Mapkey_L\OpenSameNameDrw.pro
echo mapkey(continued) ~ Trail `UI Desktop` `UI Desktop` `DLG_PREVIEW_POST` `file_open`;\ >> C:\Users\user\ptc_start\Config_Mapkey_L\OpenSameNameDrw.pro
echo mapkey(continued) ~ Select `file_open` `Type` 1 `db_4`;\ >> C:\Users\user\ptc_start\Config_Mapkey_L\OpenSameNameDrw.pro
echo mapkey(continued) ~ Input `file_open` `EMBED_BROWSER_SEARCH_IP` `%clipboard%`;\ >> C:\Users\user\ptc_start\Config_Mapkey_L\OpenSameNameDrw.pro
echo mapkey(continued) ~ Command `ProFileSelPushOpen_Standard@context_dlg_open_cmd` ;\ >> C:\Users\user\ptc_start\Config_Mapkey_L\OpenSameNameDrw.pro
echo mapkey(continued) ~ Activate `open_rep` `OK`; >> C:\Users\user\ptc_start\Config_Mapkey_L\OpenSameNameDrw.pro