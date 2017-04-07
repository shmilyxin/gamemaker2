if keyboard_check(ord("D"))
{
   rightFlag = 1;
}else{
   rightFlag = 0;
}
if keyboard_check(ord("A"))
{
   leftFlag = -1;
}else{
   leftFlag = 0;
}
if keyboard_check(ord("W"))
{
   upFlag = -1;
}else{
   upFlag = 0;
}
if keyboard_check(ord("S"))
{
   downFlag = 1;
}else{
   downFlag = 0;
}

var xDirection = leftFlag+rightFlag;
var yDirection = upFlag+downFlag;
if(xDirection!=0&&yDirection==0){
    movingFlag = 1;
    directionFlag = 0;
}
else if(xDirection==0&&yDirection!=0){
    movingFlag = 1;
    directionFlag = 1;
}
else if(xDirection!=0&&yDirection!=0){
    movingFlag = 1;
}
else if(xDirection==0&&yDirection==0){
    movingFlag = 0;
    directionFlag = 0;
}
/**

var timeNow = scr_anyc_step(global.timer);
if(timeNow - timerCount>0.2||timerCount>timeNow){
    timerCount=timeNow;
    moveableFlag = 1;
}
**/
if(movingFlag==1&&moveableFlag==1){
        if(directionFlag==0){
            var xPos = scr_getSelectMovePos(x,xDirection,global.selectXMin,global.selectXMax);
            if(scr_checkSelectMoveAble(id,xPos,y)){
                x = xPos;
                scr_moveView(x,1);
            }
        }else if(directionFlag==1){
            var yPos = scr_getSelectMovePos(y,yDirection,global.selectYMin,global.selectYMax);
            if(scr_checkSelectMoveAble(id,x,yPos)){
                y = yPos;
                scr_moveView(y,2);
            }
         }
        moveableFlag = 0;
}
    


/* */
/*  */
