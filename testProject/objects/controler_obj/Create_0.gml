scr_defGlobal();
instance_create(178,224,option_obj);

//timeline_index=tl_timeline0;
//timeline_running = true;
//timeline_position = 0;
//timeline_moment_add_script(tl_timeline0,room_speed * 60,scr_testScript());


/**

//var file = file_text_open_read( working_directory+"/Level/state1");
//var str = file_text_read_string(file);
//file_text_close(file);
var str = '16;10;5,1,1,1,1,1,1,1,1,5,5,3,2,2,2,2,5,5,1,1,1,1,1,1,5,5,3,2,2,2,2,2,3,5,5,5,1,1,5,5,5,3,4,4,2,2,2,2,4,3,3,5,5,5,5,3,3,2,2,2,2,4,2,4,4,2,4,3,3,3,3,2,2,2,4,4,4,4,2,4,4,2,4,4,4,4,2,2,2,3,3,3,3,4,2,4,4,2,4,2,2,2,2,3,3,5,5,5,5,3,3,4,2,2,2,2,4,4,3,5,5,5,1,1,5,5,5,3,2,2,2,2,2,3,5,5,1,1,1,1,1,1,5,5,2,2,2,2,3,5,5,1,1,1,1,1,1,1,1,5';
var grid = scr_splitToGrid(str,';',',');
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
var map = ds_map_create();
var gridStr= ds_grid_write(grid);
ds_map_add(map,"map",gridStr);
ds_map_add(map,"mapWidth",width);
ds_map_add(map,"mapHeight",height);
var buildStr = "1,5,3;14,4,4;1,8,1;14,1,2;4,6,5;11,3,6";
var buildList = scr_splitToList(buildStr,";");
var buildListStr = ds_list_write(buildList);
ds_map_add(map,"buildList",buildListStr);

var unitStr = "1,8,1"
var unitList = scr_splitToList(unitStr,";");
var unitListStr = ds_list_write(unitList);
ds_map_add(map,"unitList",unitListStr);

var file2 = file_text_open_write(working_directory+"/Level/level1.ini");
var str = ds_map_write(map);
file_text_write_string(file2,str);
file_text_close(file2);
show_message(str);

**/


/* */
/*  */
