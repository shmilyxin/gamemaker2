var file = file_text_open_read( working_directory+"/Level/state1");
var str = file_text_read_string(file);
file_text_close(file);
var grid = scr_splitToGrid(str,";",",");
var array2D ;
var width = ds_grid_width(grid);
var height = ds_grid_height(grid);
for(var i = 0;i<height;i++){
    var str3 = "";
    for(var j = 0;j<width;j++){
        array2D[i,j]=ds_grid_get(grid,j,i);
        str3=str3+array2D[i,j];
    }
}
var buildStr = "5,2,";
var map = ds_map_create();
var gridStr= ds_grid_write(grid);
ds_map_add(map,"map",gridStr);
ds_map_add(map,"mapWidth",width);
ds_map_add(map,"mapHeight",height);
var file2 = file_text_open_write(working_directory+"/Level/level1.ini");
var str = ds_map_write(map);
file_text_write_string(file2,str);
file_text_close(file2);
show_message(file_exists(working_directory+"/Level/level1.map"));
show_message(filename_path(working_directory+"/Level/level1.map"));
