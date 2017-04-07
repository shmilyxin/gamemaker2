/**
初始化关卡 argument0 关卡编号
**/
var num = argument0;
__view_set( e__VW.XView, 0, 0 );
__view_set( e__VW.YView, 0, 0 );
ds_map_add(global.instanceMap,"viewX",0);
ds_map_add(global.instanceMap,"viewY",0);
var biankuang = instance_create(__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 ),biankuang_obj);
var btn1 = instance_create(__view_get( e__VW.XView, 0 )+global.offsetX_btn1,__view_get( e__VW.YView, 0 )+global.offsetY_btn,btn_obj);
var btn2 = instance_create(__view_get( e__VW.XView, 0 )+global.offsetX_btn2,__view_get( e__VW.YView, 0 )+global.offsetY_btn,btn_obj);
var btn3 = instance_create(__view_get( e__VW.XView, 0 )+global.offsetX_btn3,__view_get( e__VW.YView, 0 )+global.offsetY_btn,btn_obj);
var btn4 = instance_create(__view_get( e__VW.XView, 0 )+global.offsetX_btn4,__view_get( e__VW.YView, 0 )+global.offsetY_btn,btn_obj);
btn1.index=1;
btn2.index=2;
btn3.index=3;
btn4.index=4;
ds_map_add(global.instanceMap,"btn1",btn1);
ds_map_add(global.instanceMap,"btn2",btn2);
ds_map_add(global.instanceMap,"btn3",btn3);
ds_map_add(global.instanceMap,"btn4",btn4);
ds_map_add(global.instanceMap,"biankuang",biankuang);
ds_list_clear(biankuang.allBtnList);
ds_list_clear(biankuang.activeBtnList);
ds_list_add(biankuang.allBtnList,btn1);
ds_list_add(biankuang.allBtnList,btn2);
ds_list_add(biankuang.allBtnList,btn3);
ds_list_add(biankuang.allBtnList,btn4);

var map = scr_readMap(num);
var width = ds_map_find_value(map,"mapWidth");
var height = ds_map_find_value(map,"mapHeight");
var gridStr = ds_map_find_value(map,"map");
var grid = ds_grid_create(real(width),real(height));
ds_grid_read(grid,gridStr);


var buildStr = ds_map_find_value(map,"buildList");
var buildStrList = ds_list_create();
ds_list_read(buildStrList,buildStr);

var unitStr = ds_map_find_value(map,"unitList");
var unitStrList = ds_list_create();
ds_list_read(unitStrList,unitStr);



var mapGrid = scr_createInstanceGrid(grid);
var buildArray = scr_createBuildArray(buildStrList);
var unitMap = scr_createUnitMap(unitStrList);

ds_map_add(global.instanceMap,"mapGrid",mapGrid);
ds_map_add(global.instanceMap,"buildArray",buildArray);
ds_map_add(global.instanceMap,"unitMap",unitMap);





var select = instance_create(32,32,select_obj);
ds_map_add(global.instanceMap,"select",select);

var debug = instance_create(0,0,debug_obj);
ds_map_add(global.instanceMap,"debug",debug);
