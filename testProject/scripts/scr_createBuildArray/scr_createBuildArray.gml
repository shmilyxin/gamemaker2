/**
根据建筑标识生成建筑实例
返回实例二维数组
**/
var buildList = argument0;
var size = ds_list_size(buildList);
var returnArray;
for(var i = 0;i<size;i=i+1){
    var buildStr = buildList[|i];
    buildData = scr_splitToList(buildStr,",");
    var obj = scr_getBuildObjByKey(real(buildData[|2]));
    var xIndex = real(buildData[|0]);
    var yIndex = real(buildData[|1]);
    var xPosition = scr_changeIndex(xIndex,global.mapWidth,global.mapWidth);
    var yPosition = scr_changeIndex(yIndex,global.mapWidth,global.mapWidth);
    var instance = instance_create(xPosition,yPosition,obj);
    returnArray[xIndex,yIndex]=instance;
}
return returnArray;
