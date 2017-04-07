/**
全局变量定义 初始化
**/
globalvar mapWidth; 
mapWidth = 32;
globalvar timer;
timer = 0;

globalvar timeLine;
timeLine = timeline_add();
timeline_index = timeLine;
timeline_running = true;
globalvar instanceMap;
instanceMap = ds_map_create();
globalvar selectXMin;
globalvar selectXMax;
globalvar selectYMin;
globalvar selectYMax;

globalvar viewXWidth;
viewXWidth = 512;
globalvar viewYWidth;
viewYWidth = 480;

globalvar offsetX_btn1;
offsetX_btn1= 82;
globalvar offsetX_btn2; 
offsetX_btn2= 178;
globalvar offsetX_btn3; 
offsetX_btn3= 274;
globalvar offsetX_btn4;
offsetX_btn4= 370;
globalvar offsetY_btn; 
offsetY_btn= 386;
