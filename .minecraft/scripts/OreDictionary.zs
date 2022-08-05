import minetweaker.oredict.IOreDictEntry;

<ore:stone>.remove(<minecraft:stone>);
<ore:cobblestone>.remove(<minecraft:cobblestone>);
<ore:stickWood>.remove(<minecraft:stick>);
<ore:itemReed>.remove(<minecraft:reeds>);
<ore:lumpClay>.remove(<minecraft:clay_ball>);
<ore:gemCoal>.remove(<minecraft:coal>);
<ore:itemCoal>.remove(<minecraft:coal>);

<ore:ingotIron>.remove(<minecraft:iron_ingot>);
<ore:ingotGold>.remove(<minecraft:gold_ingot>);

<ore:materialLeather>.remove(<minecraft:leather>);

for item in <minecraft:dye:*>.items {
    <ore:dye>.remove(item);
    <ore:dyeBlack>.remove(item);
    <ore:dyeRed>.remove(item);
    <ore:dyeGreen>.remove(item);
    <ore:dyeBrown>.remove(item);
    <ore:dyeBlue>.remove(item);
    <ore:dyePurple>.remove(item);
    <ore:dyeCyan>.remove(item);
    <ore:dyeLightGray>.remove(item);
    <ore:dyeGray>.remove(item);
    <ore:dyePink>.remove(item);
    <ore:dyeLime>.remove(item);
    <ore:dyeYellow>.remove(item);
    <ore:dyeLightBlue>.remove(item);
    <ore:dyeMagenta>.remove(item);
    <ore:dyeOrange>.remove(item);
}
