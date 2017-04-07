var biankuang = argument0;
var select = global.instanceMap[? "select"];
if(biankuang.mode == 0){
   biankuang.mode = 1;
   var btnIdList = ds_list_create() ;
   btnIdList[|0] = 0;
   btnIdList[|1] = 1;
   btnIdList[|2] = 2;
   btnIdList[|3] = 3;
   var btnTypeList = ds_list_create() ;
   btnTypeList[|0] = 1;
   btnTypeList[|1] = 2;
   btnTypeList[|2] = 3;
   btnTypeList[|3] = 4;
   scr_initBtn(id,btnIdList,btnTypeList);
   scr_stopSelect(select);
    
}
else {
    biankuang.mode = 0;
    scr_closeBtn(id);
    scr_startSelect(select);
    
}
