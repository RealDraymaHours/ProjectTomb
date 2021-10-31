/// @description 
searchThisArray = obj_Inventory.inventory;

lookForThisValue = 7;

for (var i = 0, iLen = array_length_1d(searchThisArray); i < iLen; i++) {
   if (searchThisArray[i] == lookForThisValue) {
       instance_destroy();
       break;
   }
}


Health = 100;
CloseToPlayer = false;
AnimationLock = false
Stunned = false;
StaggerTime = 20;
Staggered = false;
Death = false;
s = false;
IsAttacking = false;
