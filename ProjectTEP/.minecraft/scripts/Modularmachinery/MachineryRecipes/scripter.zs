#priority 32579

import mods.modularmachinery.RecipeBuilder;
import mods.modularmachinery.RecipePrimer;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;

var code as IItemStack = <contenttweaker:common_code>;

RecipeBuilder.newBuilder("scripter:0","scripter",100).
addItemInput(<minecraft:paper>).
addEnergyPerTickInput(5).
addItemOutput(code).setChance(0.99).
addItemOutput(<contenttweaker:error_code>).setChance(0.01).
build();

RecipeBuilder.newBuilder("scripter:1","scripter",600).
addItemInput(code).
addItemInput(<botania:manaresource:2>).
addEnergyPerTickInput(5).
addItemOutput(<modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:mana_altar"})).setChance(0.95).
addItemOutput(<contenttweaker:error_code>).setChance(0.05).
build();

RecipeBuilder.newBuilder("scripter:2","scripter",800).
addItemInput(code).
addItemInput(<forge:bucketfilled>.withTag({FluidName: "electrolyte", Amount: 1000})).
addEnergyPerTickInput(5).
addItemOutput(<modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:energy_dismantler"})).setChance(0.9).
addItemOutput(<contenttweaker:error_code>).setChance(0.1).
build();