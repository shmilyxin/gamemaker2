
//得出当前所有路线最小cost路线

var allRouteMapList =argument0;
var minCostIndex =0;
for(var i=0;i<ds_list_size(allRouteMapList);i++){
    var minMap = allRouteMapList[|minCostIndex];
    var thisMap = allRouteMapList[|i];
    if(thisMap[? "totalCost"]<=minMap[? "totalCost"]){
        minCostIndex = i;
    }
}
var minCostMap = allRouteMapList[|minCostIndex];
ds_list_delete(allRouteMapList,minCostIndex)
return minCostMap;
