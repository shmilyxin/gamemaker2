/**
argument0 按钮实例
argument1 按钮变换方式 true 变为选中 false 变为未选中
**/
var btn = argument0;
var flag = argument1;
if(flag){
    btn.selected =1;
    btn.image_index+=1;
}else{
    btn.selected =0;
    btn.image_index-=1;
}
