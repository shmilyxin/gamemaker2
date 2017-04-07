var select = argument0;
var xPos = argument1;
var yPos = argument2;
if(select.mode==1&&!is_undefined(select.actionUnit)&&!is_undefined(select.actionMap)){
    var index = scr_getIndex(xPos,yPos);
    var key = string(index[0])+"_"+string(index[1]);
    if(ds_map_exists(select.actionMap, key)){
        return true;
    }else{
        return false;
    }
}else{
    return true;
}
return false;
