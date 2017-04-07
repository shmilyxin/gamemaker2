/**根据坐标获得Xindex Yindex
返回数组
array[0] = Xindex
array[1] = Yindex
**/
var xPos = argument0;
var yPos = argument1;
var array;
array[0] = scr_posToIndex(xPos,global.mapWidth,global.mapWidth);
array[1] = scr_posToIndex(yPos,global.mapWidth,global.mapWidth);
return array;
