/**
根据地图栅格生成地图实例 
返回实例栅格
**/
var grid = argument0;
var width = ds_grid_width(grid);
var height = ds_grid_height(grid);

global.selectXMin = scr_changeIndex(0,global.mapWidth,global.mapWidth);
global.selectXMax = scr_changeIndex(width-1,global.mapWidth,global.mapWidth);
global.selectYMin = scr_changeIndex(0,global.mapWidth,global.mapWidth);
global.selectYMax = scr_changeIndex(height-1,global.mapWidth,global.mapWidth);

var returnGrid = ds_grid_create(width,height);
for(var i = 0;i<height;i=i+1){
    for(var j = 0;j<width;j=j+1){
        var key = ds_grid_get(grid,j,i);
        var obj = scr_getTerObjByKey(key);
        var xPosition = scr_changeIndex(j,global.mapWidth,global.mapWidth);
        var yPosition = scr_changeIndex(i,global.mapWidth,global.mapWidth);
        var instance = instance_create(xPosition,yPosition,obj);
        instance.xIndex = j;
        instance.yIndex = i;
        ds_grid_add(returnGrid,j,i,instance);
    }
}
return returnGrid;
