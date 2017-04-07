/**
灏嗕竴娈靛瓧绗︿覆杞寲涓篻rid 鏍煎紡涓?<瀹藉害><鍒嗛殧绗?><楂樺害><鍒嗛殧绗?><鍐呭1><鍒嗛殧绗?><鍐呭2><鍒嗛殧绗?><鍐呭3>"
argument0 鏁版嵁涓讳綋
argument1 鐢ㄦ潵鍒嗛殧grid瀹藉害楂樺害鍜屾暟鎹殑鍒嗛殧绗?
argument2 鐢ㄦ潵鍒嗛殧grid鏁版嵁鐨勫垎闅旂
**/
var str = argument0;
var grid = null;
var splitOut = argument1;
var splitInside = argument2;
if(str!=""){
    var gridBody = scr_splitToList(str,splitOut);
    var width = real(gridBody[|0]);
    var height = real(gridBody[|1]);
    var valueList = scr_splitToList(gridBody[|2],splitInside);
    grid = ds_grid_create(width,height);
    for(var i = 0;i<height;i++){
        for(var j = 0;j<width;j++){
        var index = i*width+j;
            ds_grid_add(grid,j,i,valueList[|index]);
        }
    }
}
return grid;
