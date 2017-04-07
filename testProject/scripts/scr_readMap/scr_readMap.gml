/**
璇诲彇鍦板浘 
argument0 鍏冲崱缂栧彿 num绫诲瀷 渚?1 2 3 
璇诲彇鍏冲崱鍐呭 渚嬪level1.map
璇绘垚涓€涓猟s map
鍏朵腑 鍦板浘key        鈥渕ap鈥?      鍊间负grid
     mapGrid瀹藉害key 鈥渕apWidth鈥? 鍊间负鏁板瓧
     mapGrid楂樺害key 鈥渕apHeight鈥?鍊间负鏁板瓧
**/
var stateLevel = argument0;
var path = working_directory + "/Level"+"/level"+string(stateLevel)+".map";
var file = file_text_open_read(path);
var str = "";
while(!file_text_eof(file)){
   str+=file_text_read_string(file);
}
var map = ds_map_create();
ds_map_read(map,str);
return map;

