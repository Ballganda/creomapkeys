mapkey .lcopyfilename @MAPKEY_LABEL[]CopyFileName;\ 
mapkey(continued) ~ Command `ProCmdMmRels` ;\ 
mapkey(continued) ~ Activate `relation_dlg` `CBLocalParams` 1;\ 
mapkey(continued) ~ Activate `relation_dlg` `CBRelations` 1;\ 
mapkey(continued) ~ Update `relation_dlg` `RelText` 1 0 0 1 `U_FILENAME = REL_MODEL_NAME\n`;\ 
mapkey(continued) ~ Activate `relation_dlg` `TBVerify`;\ 
mapkey(continued) ~ Activate `UI Message Dialog` `ok`;\ 
mapkey(continued) ~ Select `relation_dlg` `ParamsPHLay.ParTable` 2 `rowU_FILENAME` `value`;\ 
mapkey(continued) ~ Activate `relation_dlg` `ParamsPHLay.PBCopy`;\ 
mapkey(continued) ~ Update `relation_dlg` `RelText` 1 0 0 1 ``;\ 
mapkey(continued) ~ Activate `relation_dlg` `TBVerify`;\ 
mapkey(continued) ~ Activate `UI Message Dialog` `ok`;\ 
mapkey(continued) ~ Select `relation_dlg` `ParamsPHLay.ParTable` 2 `rowU_FILENAME` `name`;\ 
mapkey(continued) ~ Activate `relation_dlg` `ParamsPHLay.TBDelParam`;\ 
mapkey(continued) ~ Activate `relation_dlg` `PB_OK`;

mapkey .lregenopendrwmk @MAPKEY_LABELMakesOpenDRWmapkey;\
@SYSTEMC:\\Users\\user\\ptc_start\\Config_Mapkey_L\\makeopendrw.bat;

mapkey .limportopendrwmk @MAPKEY_LABELLoad Named config;\
mapkey(continued) ~ Command `ProCmdRibbonOptionsDlg` ;\
mapkey(continued) ~ Select `ribbon_options_dialog` `PageSwitcherPageList` 1 `ConfigLayout`;\
mapkey(continued) ~ Activate `ribbon_options_dialog` `ConfigLayout.Open`;\
mapkey(continued) ~ Update `file_open` `opt_EMBED_BROWSER_TB_SAB_LAYOUT` \
mapkey(continued) `C:\\Users\\user\\ptc_start\\Config_Mapkey_L\\OpenSameNameDrw.pro`;\
mapkey(continued) ~ Activate `file_open` `opt_EMBED_BROWSER_TB_SAB_LAYOUT`;\
mapkey(continued) ~ Command `ProFileSelPushOpen_Standard@context_dlg_open_cmd` ;\
mapkey(continued) ~ Activate `ribbon_options_dialog` `OkPshBtn`;

mapkey drw @MAPKEY_LABEL[]Open DRW Same File Name;\
%.lcopyfilename;%.lregenopendrwmk;%.limportopendrwmk;%.lopendrw;

mapkey .lcopyfilename @MAPKEY_LABEL[]CopyFileName;\ 
~ Command `ProCmdMmRels` ;\ 
~ Activate `relation_dlg` `CBLocalParams` 1;\ 
~ Activate `relation_dlg` `CBRelations` 1;\ 
~ Update `relation_dlg` `RelText` 1 0 0 1 `U_FILENAME = REL_MODEL_NAME\n`;\ 
~ Activate `relation_dlg` `TBVerify`;\ 
~ Activate `UI Message Dialog` `ok`;\ 
~ Select `relation_dlg` `ParamsPHLay.ParTable` 2 `rowU_FILENAME` `value`;\ 
~ Activate `relation_dlg` `ParamsPHLay.PBCopy`;\ 
~ Update `relation_dlg` `RelText` 1 0 0 1 ``;\ 
~ Activate `relation_dlg` `TBVerify`;\ 
~ Activate `UI Message Dialog` `ok`;\ 
~ Select `relation_dlg` `ParamsPHLay.ParTable` 2 `rowU_FILENAME` `name`;\ 
~ Activate `relation_dlg` `ParamsPHLay.TBDelParam`;\ 
~ Activate `relation_dlg` `PB_OK`;

mapkey .lRegenDRWNameAndOpen @MAPKEY_LABELMakesOpenDRWmapkey;\
@SYSTEM\
for /f "eol=\; tokens=*" \%\%I in ('powershell Get-Clipboard') do set "clipboard=\%\%I"\n\
set saveto=tempmk.pro\n\
echo mapkey .ltempmk \@MAPKEY_LABEL[]Temp Mapkey with Clipboard Paste\;\\ > \%saveto\%\n\
echo \~ Input `file_open` `EMBED_BROWSER_SEARCH_IP` `\%clipboard\%.drw`\; >> \%saveto\%;\
~ Command `ProCmdRibbonOptionsDlg` ;\
~ Select `ribbon_options_dialog` `PageSwitcherPageList` 1 `ConfigLayout`;\
~ Activate `ribbon_options_dialog` `ConfigLayout.Open`;\
~ Update `file_open` `opt_EMBED_BROWSER_TB_SAB_LAYOUT` `tempmk.pro`;\
~ Command `ProFileSelPushOpen_Standard@context_dlg_open_cmd` ;\
~ Activate `ribbon_options_dialog` `OkPshBtn`;
@SYSTEM\
del tempmk.pro;\
~ Command `ProCmdModelOpen` ;\
~ Trail `UI Desktop` `UI Desktop` `DLG_PREVIEW_POST` `file_open`;\
~ Select `file_open` `Type` 1 `db_4`;\
%.ltempmk;\
~ Command `ProFileSelPushOpen_Standard@context_dlg_open_cmd` ;\
~ Activate `open_rep` `OK`;

mapkey drw @MAPKEY_LABEL[]Open DRW Same File Name;\
%.lcopyfilename;%.lRegenDRWNameAndOpen;
