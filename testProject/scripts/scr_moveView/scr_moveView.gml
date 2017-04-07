/**
根据坐标移动视野
argument0 当前光标坐标可能是X或Y
argument1 标志是X坐标变化还是Y坐标变化 1 为X 2为Y
**/
var pos = argument0;
var type = argument1;
var biankuang = ds_map_find_value(global.instanceMap,"biankuang");
var btn1 = ds_map_find_value(global.instanceMap,"btn1");
var btn2 = ds_map_find_value(global.instanceMap,"btn2");
var btn3 = ds_map_find_value(global.instanceMap,"btn3");
var btn4 = ds_map_find_value(global.instanceMap,"btn4");
if(type == 1){
    var xView = __view_get( e__VW.XView, 0 );
    var xMaxView = global.viewXWidth-mapWidth;
    if(pos-xView>=xMaxView){
        __view_set( e__VW.XView, 0, xView+mapWidth );
        biankuang.x += mapWidth;
        btn1.x += mapWidth;
        btn2.x += mapWidth;
        btn3.x += mapWidth;
        btn4.x += mapWidth;
    }else if(pos-xView<=mapWidth&xView>0){
        __view_set( e__VW.XView, 0, xView-mapWidth );
         biankuang.x -= mapWidth;
         btn1.x -= mapWidth;
         btn2.x -= mapWidth;
         btn3.x -= mapWidth;
         btn4.x -= mapWidth;
    }
}else if(type == 2){
    var yView = __view_get( e__VW.YView, 0 );
    var yMaxView = global.viewYWidth-(mapWidth*5);
    if(pos-yView>=yMaxView){
        __view_set( e__VW.YView, 0, yView+mapWidth );
        biankuang.y += mapWidth;
        btn1.y += mapWidth;
        btn2.y += mapWidth;
        btn3.y += mapWidth;
        btn4.y += mapWidth;
    }else if(pos-yView<=mapWidth&yView>0){
        __view_set( e__VW.YView, 0, yView-mapWidth );
        biankuang.y -= mapWidth;
        btn1.y -= mapWidth;
        btn2.y -= mapWidth;
        btn3.y -= mapWidth;
        btn4.y -= mapWidth;
    }
}
