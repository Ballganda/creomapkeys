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
