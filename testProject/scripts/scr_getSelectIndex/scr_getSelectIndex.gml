/**
获取当前选择框在地图上的格子
返回数组 
argument0 选择框实例
array[0] = xIndex
array[1] = yIndex
**/
var select =argument0;
var array;
var xPos = select.x;
var yPos = select.y;
var xIndex = scr_posToIndex(xPos,global.mapWidth,global.mapWidth);
var yIndex = scr_posToIndex(yPos,global.mapWidth,global.mapWidth);
array[0]=xIndex;
array[1]=yIndex;
return array;
