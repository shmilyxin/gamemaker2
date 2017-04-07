/**
 1 鍩庡牎-1
 2 鍩庡牎-2
 3 鏁欏爞-1
 4 鏁欏爞-2
 5 鏉戝簞-1
 6 鏉戝簞-2
 7 娓彛-1
 8 娓彛-2
**/
var key = argument0;
if(is_string(key)){
    key = real(key);
}
switch(key){
    case 1 : return chengbao1_obj;
    case 2 : return chengbao2_obj;
    case 3 : return jiaotang1_obj;
    case 4 : return jiaotang2_obj;
    case 5 : return chunzhuang1_obj;
    case 6 : return chunzhuang2_obj;
}

