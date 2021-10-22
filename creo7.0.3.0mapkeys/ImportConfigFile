mapkey !! @MAPKEY_LABEL[!!]Import Config File;\
! Opens file>options>configurations editor>import;\
! Replace the default dir "C:\\Users\\user" with your choice;\
;\
! Open the options dialog ;\
~ Command `ProCmdRibbonOptionsDlg` ;\
;\
! Opens the cofig editor page ;\
~ Select `ribbon_options_dialog` `PageSwitcherPageList` 1 `ConfigLayout`;\
;\
! the options import from drop down menu ;\
! Comment between next two causes issue because a file name argument can be there ;\
~ Activate `ribbon_options_dialog` `ConfigLayout.Open`;\
~ Activate `file_open` `Location Browser`;\
;\
! Put the defined folder location in ;\
~ Update `file_open` `opt_EMBED_BROWSER_TB_SAB_LAYOUT` `C:\\Users\\user`;\
;\
! refresh the location by activating the browser;\
~ Activate `file_open` `opt_EMBED_BROWSER_TB_SAB_LAYOUT`;
!
