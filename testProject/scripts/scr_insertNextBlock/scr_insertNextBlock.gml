
var block = argument0;
var minRouteList =argument1;
var totalCost =argument2;
var routeInfoMap = ds_map_create();
var routeList = ds_list_create();
ds_list_copy(routeList,minRouteList);
var cost = totalCost+block.movePoint;

if(!scr_checkTerListContant(routeList,block)){
    ds_list_add(routeList,block);
    routeInfoMap[? "routeList"] =routeList;
    routeInfoMap[? "totalCost"] =cost;
    return routeInfoMap;
}
return undefined;


