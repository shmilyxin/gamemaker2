/**
移动单位
**/
var select = argument0;
var unit = select.actionUnit;
var map = select.actionMap;
var index = scr_getIndex(select.x,select.y);
var xIndex = index[0];
var yIndex = index[1];
var key = string(xIndex)+"_"+string(yIndex);
var routeMap = map[? key];
if(!is_undefined(routeMap)){
    var routeList = routeMap[? "routeList"];
    var size = ds_list_size(routeList);
    unit.routeList = routeList;
    unit.nextIndex = 0;
    unit.nextBlock = routeList[|unit.nextIndex];
    unit.alarm[0]=1;
}
