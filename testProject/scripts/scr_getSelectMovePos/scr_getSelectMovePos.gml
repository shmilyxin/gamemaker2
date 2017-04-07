var position = argument0;
var directionP = argument1;
var limitMin = argument2;
var limitMax = argument3;
var result = position+global.mapWidth*directionP;
if(result>=limitMin&&result<=limitMax){
    return result;
}else{
    return position;
}
