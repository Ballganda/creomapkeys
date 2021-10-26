mapkey $F9 @MAPKEY_LABEL[]Layers Datums Toggle.Loaded.Hide;\
! If the keys are changed they need to be changed in associated files also;\
! This mapkey requires the files layersdatumsshow.pro and ;\
! layersdatumshide.pro to be in the folder specified below. ;\
! Set below and place the files into that loaction ;\
! Recommend a sub folder in CREO start in directory ;\
;\
! This run the .lldh mapkey to hide the defined datum layers;\
%.lldh;\
;\
! Below commands load the config file to redefine this mapkey;\
~ Command `ProCmdRibbonOptionsDlg` ;\
~ Select `ribbon_options_dialog` `PageSwitcherPageList` 1 `ConfigLayout`;\
~ Activate `ribbon_options_dialog` `ConfigLayout.Open`;\
~ Update `file_open` `Inputname` `C:\\Users\\user\\ptc_start\\Config_Mapkey_Toggles_L\\layersdatumsshow.pro`;\
~ Command `ProFileSelPushOpen@context_dlg_open_cmd` ;\
~ Activate `ribbon_options_dialog` `OkPshBtn`;\
~ FocusIn `UITools Msg Dialog Future` `no`;\
~ Activate `UITools Msg Dialog Future` `no
