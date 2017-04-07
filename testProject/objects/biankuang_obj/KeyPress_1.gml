if keyboard_check(ord("K"))
{
    if(isChanging == 0){
        isChanging = 1;
        scr_biankuangChangeMode(id);
    }
    var select = global.instanceMap[? "select"];
    if(select.mode == 1){
        scr_selectCancel(select);
    }
}
if keyboard_check(ord("J"))
{
    if(mode == 0){
        var select = global.instanceMap[? "select"];
        if(select.mode == 0){
            var indexArray = scr_getSelectIndex(select);
            var unitMap = global.instanceMap[? "unitMap"];
            var key = scr_getIndexKey(indexArray[0],indexArray[1]);
            var unit = unitMap[? key];
            if(!is_undefined(unit)){
               if(unit.operated==0){
                 scr_unitSelect(unit,select);
               }
            }
        }else if(select.mode == 1){
            scr_unitMove(select);
        }
    }else if(mode == 1){
       
    }
}
if keyboard_check(ord("D"))
{
    if(isChanging == 0&&mode == 1){
       scr_changeBtnSelect(id,2);
    }
}
if keyboard_check(ord("A"))
{
    if(isChanging == 0&&mode == 1){
       scr_changeBtnSelect(id,1);
    }
}

