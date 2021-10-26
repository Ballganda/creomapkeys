mapkey $F9 @MAPKEY_LABEL[]Layers Datums Toggle.Loaded.Hide;\
! If the keys are changed they need to be changes in associated files also;\
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
~ Activate `ribbon_options_dialog` `OkPshBtn`;

! Hides the defined layers
mapkey .lldh @MAPKEY_LABEL[.lldh]Layers Datums Hide;\
! Makes the layer tree active;\
~ Command `ProCmdMdlTreeShowLyrs`;\
;\
! The following "ASSM_DATUM" is the name of a layer. Replace with the name;\
! of a layer you want to hide. Can copy and paste the following 2 lines to ;\
! setup several layers to hide. Here I only hide 2 layers;\
~ Select `main_dlg_cur` `PHTLeft.PHLayerUI.AssyTree` 1 `node0:ASSM_DATUM`;\
~ Command `ProCmdViewHide` ;\
;\
~ Select `main_dlg_cur` `PHTLeft.PHLayerUI.AssyTree` 1 `node0:DATUM`;\
~ Command `ProCmdViewHide` ;\
;\
! Repaint the window to see the change;\
~ Command `ProCmdViewRepaint` ;\
;\
! Switch back to the model tree;\
~ Command `ProCmdLayer_ShowMdlTree` ;

! Show the defined layers
mapkey .llds @MAPKEY_LABEL[.llds]Layers Datums Show;\
! Makes the layer tree active;\
~ Command `ProCmdMdlTreeShowLyrs`;\
! The following "ASSM_DATUM" is the name of a layer. Replace with the name;\
! of a layer you want to show. Can copy and paste the following 2 lines to ;\
! setup several layers. Here I only show 2 layers;\
~ Select `main_dlg_cur` `PHTLeft.PHLayerUI.AssyTree` 1 `node0:ASSM_DATUM`;\
~ Command `ProCmdViewShow` ;\
~ Select `main_dlg_cur` `PHTLeft.PHLayerUI.AssyTree` 1 `node0:DATUM`;\
~ Command `ProCmdViewShow` ;\
;\
! Repaint the window to see the change;\
~ Command `ProCmdViewRepaint` ;\
! Switch back to the model tree;\
~ Command `ProCmdLayer_ShowMdlTree` ;
