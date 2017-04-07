var unit = argument0;
var select =argument1;
var maxPoint = unit.movePoint;
var unitIndex = scr_getIndex(unit.x,unit.y);
var unitXIndex = unitIndex[0];
var unitYIndex = unitIndex[1];
var mapGrid = global.instanceMap[? "mapGrid"];

var width = ds_grid_width(mapGrid);
var height = ds_grid_height(mapGrid);

var teriList = ds_list_create();
for(var j = 0;j<height;j=j+1){
    for(var i = 0;i<width;i=i+1){
        if(abs(i-unitXIndex)+abs(j-unitYIndex)<maxPoint){
           ds_list_add(teriList,mapGrid[# i,j]); 
        }
    }
}

var returnMap = ds_map_create();
if(ds_list_size(teriList)>0){
    for(var i = 0;i<ds_list_size(teriList);i++){
        var block = teriList[|i];
        
        var startPos = scr_getIndex(unit.x,unit.y);
        var endPos = scr_getIndex(block.x,block.y);
        var routeMap = scr_getRoute(mapGrid,startPos,endPos,unit.movePoint);
        if(!is_undefined(routeMap)){
        var key = string(endPos[0])+"_"+string(endPos[1]);
            ds_map_add(returnMap,key,routeMap);
            instance_create(block.x,block.y,yinying_obj);
        }else{
            continue;
        }
    }
}
select.actionMap = returnMap;
