/**
修改边框选择
argument0 边框实例
argument1 移动方式 1 左 2 右
**/
var bk = argument0;
var type = argument1;
var index = bk.selectedBtn.index;
var activeBtnList = ds_list_create();
var size = ds_list_size(bk.activeBtnList);
if(size>1){
scr_changeBtnSelected(bk.selectedBtn,false);
for(var i = 0;i<size;i++){
    var btnTemp = bk.activeBtnList[|i];
    if(btnTemp.index == index){
        if(type==2){
            if(i!=size-1){
                var nextBtn = bk.activeBtnList[|i+1];
                scr_changeBtnSelected(nextBtn,true);
                bk.selectedBtn=nextBtn;
                break;
            }else{
                var nextBtn = bk.activeBtnList[|0];
                scr_changeBtnSelected(nextBtn,true);
                bk.selectedBtn=nextBtn;
                break;
            }
        }
        if(type==1){
            if(i!=0){
                var nextBtn = bk.activeBtnList[|i-1];
                bk.selectedBtn=nextBtn;
                scr_changeBtnSelected(nextBtn,true);
                break;
            }else{
                var nextBtn = bk.activeBtnList[|size-1];
                bk.selectedBtn=nextBtn;
                scr_changeBtnSelected(nextBtn,true);
                break;
            }
        }
    }
}
}
