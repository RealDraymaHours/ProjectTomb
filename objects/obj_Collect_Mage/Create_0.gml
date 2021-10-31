searchThisArray = obj_ArmorInventory.inventory;

lookForThisValue = 6;

for (var i = 0, iLen = array_length_1d(searchThisArray); i < iLen; i++) {
   if (searchThisArray[i] == lookForThisValue) {
       instance_destroy();
       break;
   }
}