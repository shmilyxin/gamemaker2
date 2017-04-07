/**
关闭按钮
argument0 边框
**/
var biankuang = argument0;
var idSize = ds_list_size(biankuang.activeBtnList);
for(var i = 0 ;i<idSize;i++){
    var btn = biankuang.activeBtnList[|i];
    btn.alarm[0]=5;
}
ds_list_clear(biankuang.activeBtnList);
