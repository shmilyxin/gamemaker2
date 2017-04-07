/**
 1 深海
 2 草地
 3 沙地
 4 森林
 5 浅滩
 6 河流
 7 瀑布
 8 冰原
 9 悬崖 中
 10 悬崖 左
 11 悬崖 右
**/
var key = argument0;
if(is_string(key)){
    key = real(key);
}
switch(key){
    case 1 : return sea_obj;
    case 2 : return caodi_obj;
    case 3 : return sadi_obj;
    case 4 : return senlin_obj;
    case 5 : return qiantan_obj;
    case 6 : return heliu_obj;
    case 7 : return pubu_obj;
    case 8 : return bingyuan_obj;
    case 9 : return xuanya_obj;
    case 10 : return xuanya_r_obj;
    case 11 : return xuanya_l_obj;
}


