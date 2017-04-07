if(point_distance(x, y, nextBlock.x, nextBlock.y)>4){
    move_towards_point(nextBlock.x, nextBlock.y,4);
    alarm[0]=1;
}else{
    var size = ds_list_size(routeList);
    if(nextIndex<size-1){
        nextIndex+=1;
        nextBlock = routeList[|nextIndex];
        alarm[0]=1;
    }else{
        speed = 0;
        scr_initUnitBtn(id);
    }
    x = floor(x);
    y = floor(y);
}

