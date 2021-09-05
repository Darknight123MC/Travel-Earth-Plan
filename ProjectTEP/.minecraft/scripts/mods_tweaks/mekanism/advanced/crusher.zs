/*  
    ZenScripts for Minecraft Modpack "Travel Earth Plan".
    You can use these scripts as a example.
    But you can't copy and paste these scripts to your Modpack.
    Thanks a lot!
*/

#priority 39000
import crafttweaker.item.IItemDefinition;
import mods.mekanism.crusher;

var materials as IItemDefinition = <contenttweaker:material_part>.definition;
val ingotInt as int[] = [11,28,45,62,79,96,113,130,147,164,181,198,215];
val dustInt as int[] = [9,26,43,60,77,94,111,128,145,162,179,196,213];

for r, DustInt in dustInt {
    val dusts = materials.makeStack(DustInt);
    val ingots = materials.makeStack(ingotInt[r]);
    crusher.addRecipe(ingots,dusts);
}

//===============================================================

//remove
crusher.removeRecipe(<mekanism:biofuel>);

//add
crusher.addRecipe(<contenttweaker:ingot_is>,<contenttweaker:tin_solder_dust>);
crusher.addRecipe(<contenttweaker:ingot_in>,<contenttweaker:iron_with_nickel>);
crusher.addRecipe(<botania:cellblock>,<mekanism:biofuel>);