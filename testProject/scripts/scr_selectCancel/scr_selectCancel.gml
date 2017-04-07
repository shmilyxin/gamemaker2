/**选择取消**/
var select = argument0;
var unit = select.actionUnit;
var routeList = unit.routeList;
var startBlock = routeList[|0];
unit.x = startBlock.x;
unit.y = startBlock.y;
select.mode = 0;          
select.actionUnit = undefined;
select.actionMap = undefined;
scr_unitCancelSelect(unit,select);
with (yinying_obj)
{
    instance_destroy();
}
