searchThisArray = obj_Inventory.inventory;

lookForThisValue = 2;

for (var i = 0, iLen = array_length_1d(searchThisArray); i < iLen; i++) {
   if (searchThisArray[i] == lookForThisValue) {
       instance_destroy();
       break;
   }
}

Health = 200;
IsAttacking = false;
Staggered = false;
StaggerTime = 20;
Death = false;
Stunned = false;

TimerSet = false;
Running = true;