/**
根据单位标识生成单位实例
返回实例二维数组
**/
var unitList = argument0;
var size = ds_list_size(unitList);
var returnMap = ds_map_create();
for(var i = 0;i<size;i=i+1){
    var unitStr = unitList[|i];
    unitData = scr_splitToList(unitStr,",");
    var obj = scr_getUnitObjByKey(real(unitData[|2]));
    var xIndex = real(unitData[|0]);
    var yIndex = real(unitData[|1]);
    var xPosition = scr_changeIndex(xIndex,global.mapWidth,global.mapWidth);
    var yPosition = scr_changeIndex(yIndex,global.mapWidth,global.mapWidth);
    var instance = instance_create(xPosition,yPosition,obj);
    var key = scr_getIndexKey(xIndex,yIndex);
    returnMap[? key]=instance;
}
return returnMap;
