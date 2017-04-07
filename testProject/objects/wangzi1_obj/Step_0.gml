var num = scr_anyc_step(global.timer);
if(selected==0){
    if(num%2<1){
        image_index=0;
    }else{
        image_index=1;
    }
}
else if(selected==1){
    if(num%1<0.5){
        image_index=2;
    }else{
        image_index=3;
    }
}

