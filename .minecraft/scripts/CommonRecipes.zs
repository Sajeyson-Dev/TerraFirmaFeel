import minetweaker.item.IItemStack;
import minetweaker.item.IIngredient;
import minetweaker.oredict.IOreDictEntry;
import mods.nei.NEI;

/*
    Author: Sajeyson
*/

global stick                                as IItemStack = <terrafirmacraft:item.stick>;
global paper                                as IItemStack = <minecraft:paper>;
global leather                              as IItemStack = <terrafirmacraft:item.TFC Leather>;
global coal                                 as IItemStack = <terrafirmacraft:item.coal>;
global thatch                               as IItemStack = <terrafirmacraft:Thatch>;
global ironSheet                            as IItemStack = <terrafirmacraft:item.Wrought Iron Double Sheet>;
global hammerHead                           as IItemStack = <terrafirmacraft:item.Wrought Iron Hammer Head>;
global chiselHead                           as IItemStack = <terrafirmacraft:item.Wrought Iron Chisel Head>;
global boneMeal                             as IItemStack = <terrafirmacraft:item.dyePowder:15>;
global inkSac                               as IItemStack = <terrafirmacraft:item.dyePowder>;
global cocoaBeans                           as IItemStack = <terrafirmacraft:item.dyePowder:3>;

global log                                  as IOreDictEntry = <ore:logWood>;
global lumber                               as IOreDictEntry = <ore:woodLumber>;
global cloth                                as IOreDictEntry = <ore:materialCloth>;

global redDye                               as IItemStack = <terrafirmacraft:item.dyePowder:1>;
global greenDye                             as IItemStack = <terrafirmacraft:item.dyePowder:2>;
global blueDye                              as IItemStack = <terrafirmacraft:item.dyePowder:4>;
global purpleDye                            as IItemStack = <terrafirmacraft:item.dyePowder:5>;
global cyanDye                              as IItemStack = <terrafirmacraft:item.dyePowder:6>;
global lighGrayDye                          as IItemStack = <terrafirmacraft:item.dyePowder:7>;
global grayDye                              as IItemStack = <terrafirmacraft:item.dyePowder:8>;
global pinkDye                              as IItemStack = <terrafirmacraft:item.dyePowder:9>;
global limeDye                              as IItemStack = <terrafirmacraft:item.dyePowder:10>;
global yellowDye                            as IItemStack = <terrafirmacraft:item.dyePowder:11>;
global lighBlueDye                          as IItemStack = <terrafirmacraft:item.dyePowder:12>;
global magentaDye                           as IItemStack = <terrafirmacraft:item.dyePowder:13>;
global orangeDye                            as IItemStack = <terrafirmacraft:item.dyePowder:14>;

global carpet                               as IItemStack = <minecraft:carpet>;
global itemFrame                            as IItemStack = <minecraft:item_frame>;
global painting                             as IItemStack = <minecraft:painting>;
global coalBlock                            as IItemStack = <minecraft:coal_block>;
global book                                 as IItemStack = <minecraft:book>;
global bookshelf                            as IItemStack = <terrafirmacraft:Bookshelf>;
global boat                                 as IItemStack = <minecraft:boat>;
global carpentersBlocks                     as IItemStack = <CarpentersBlocks:blockCarpentersBlock>;
global carpentersBed                        as IItemStack = <CarpentersBlocks:itemCarpentersBed>;
global carpentersHammer                     as IItemStack = <CarpentersBlocks:itemCarpentersHammer>;
global carpentersChisel                     as IItemStack = <CarpentersBlocks:itemCarpentersChisel>;
global horseArmor                           as IItemStack = <minecraft:iron_horse_armor>;

global saw                                  as IOreDictEntry = <ore:itemSaw>;
global axe                                  as IOreDictEntry = <ore:itemAxe>;
global hammer                               as IOreDictEntry = <ore:itemHammer>;
global chisel                               as IOreDictEntry = <ore:itemChisel>;

/*
    Functions
*/

function addShaped(output as IItemStack, input as IIngredient[][]) as void {
    recipes.addShaped(output, input);
}

function addShapeless(output as IItemStack, input as IIngredient[]) as void {
    recipes.addShapeless(output, input);
}

function remove(items as IItemStack[]) {
     for item in items {
        recipes.remove(item);
    }
}

function removeAndHide(items as IItemStack[]) as void {
    for item in items {
        recipes.remove(item);
        NEI.hide(item);
    }
}

/*
    Removing
*/

remove([
    carpet, 
    itemFrame,
    painting,
    coalBlock,
    book,
    boat,
    carpentersBlocks,
    carpentersBed,
    carpentersHammer,
    carpentersChisel
]);

removeAndHide([
    <CarpentersBlocks:itemCarpentersTile>
]);

recipes.removeShaped(<minecraft:carpet:*>);
furnace.remove(<*>);
furnace.addRecipe(<minecraft:stone>.withTag({display: {Name: "Disabled!"}}), <minecraft:stone>); // ⬅ Need to keep at least 1 furnace recipe, because NEI crashes.

remove([
    <minecraft:anvil>,
    <minecraft:arrow>,
    <minecraft:baked_potato>,
    <minecraft:beacon>,
    <minecraft:blaze_powder>,
    <minecraft:bow>,
    <minecraft:bookshelf>,
    <minecraft:bowl>,
    <minecraft:bread>,
    <minecraft:brewing_stand>,
    <minecraft:brick>,
    <minecraft:brick_block>,
    <minecraft:brick_stairs>,
    <minecraft:bucket>,
    <minecraft:cake>,
    <minecraft:carrot_on_a_stick>,
    <minecraft:chainmail_boots>,
    <minecraft:chainmail_chestplate>,
    <minecraft:chainmail_helmet>,
    <minecraft:chainmail_leggings>,
    <minecraft:chest_minecart>,
    <minecraft:coal:*>,
    <minecraft:cobblestone>,
    <minecraft:cobblestone_wall:*>,
    <minecraft:cobblestone_wall>,
    <minecraft:comparator>,
    <minecraft:cooked_beef>,
    <minecraft:cooked_chicken>,
    <minecraft:cooked_fished:*>,
    <minecraft:cooked_porkchop>,
    <minecraft:cookie>,
    <minecraft:clay>,
    <minecraft:daylight_detector>,
    <minecraft:diamond>,
    <minecraft:diamond_axe>,
    <minecraft:diamond_block>,
    <minecraft:diamond_boots>,
    <minecraft:diamond_chestplate>,
    <minecraft:diamond_helmet>,
    <minecraft:diamond_hoe>,
    <minecraft:diamond_horse_armor>,
    <minecraft:diamond_leggings>,
    <minecraft:diamond_ore>,
    <minecraft:diamond_pickaxe>,
    <minecraft:diamond_shovel>,
    <minecraft:diamond_sword>,
    <minecraft:dye:*>,
    <minecraft:emerald>,
    <minecraft:emerald_block>,
    <minecraft:enchanting_table>,
    <minecraft:ender_chest>,
    <minecraft:ender_eye>,
    <minecraft:fence>,
    <minecraft:fence_gate>,
    <minecraft:fermented_spider_eye>,
    <minecraft:fire_charge>,
    <minecraft:fireworks>,
    <minecraft:firework_charge>,
    <minecraft:fireworks>,
    <minecraft:fish:*>,
    <minecraft:fishing_rod>,
    <minecraft:flint_and_steel>,
    <minecraft:flower_pot>,
    <minecraft:furnace>,
    <minecraft:furnace_minecart>,
    <minecraft:glass_bottle>,
    <minecraft:glowstone>,
    <minecraft:gold_block>,
    <minecraft:gold_ingot>,
    <minecraft:gold_nugget>,
    <minecraft:golden_apple:*>,
    <minecraft:golden_apple>,
    <minecraft:golden_axe>,
    <minecraft:golden_boots>,
    <minecraft:golden_carrot>,
    <minecraft:golden_chestplate>,
    <minecraft:golden_helmet>,
    <minecraft:golden_hoe>,
    <minecraft:golden_horse_armor>,
    <minecraft:golden_leggings>,
    <minecraft:golden_pickaxe>,
    <minecraft:golden_shovel>,
    <minecraft:golden_sword>,
    <minecraft:grass>,
    <minecraft:gravel>,
    <minecraft:hardened_clay>,
    <minecraft:hay_block>,
    <minecraft:hopper>,
    <minecraft:hopper_minecart>,
    <minecraft:iron_axe>,
    <minecraft:iron_block>,
    <minecraft:iron_boots>,
    <minecraft:iron_chestplate>,
    <minecraft:iron_helmet>,
    <minecraft:iron_hoe>,
    <minecraft:iron_ingot>,
    <minecraft:iron_leggings>,
    <minecraft:iron_ore>,
    <minecraft:iron_pickaxe>,
    <minecraft:iron_shovel>,
    <minecraft:iron_sword>,
    <minecraft:jukebox>,
    <minecraft:lapis_block>,
    <minecraft:lead>,
    <minecraft:leather_boots>,
    <minecraft:leather_chestplate>,
    <minecraft:leather_helmet>,
    <minecraft:leather_leggings>,
    <minecraft:map>,
    <minecraft:magma_cream>,
    <minecraft:melon_block>,
    <minecraft:melon_seeds>,
    <minecraft:mossy_cobblestone>,
    <minecraft:mushroom_stew>,
    <minecraft:nether_brick>,
    <minecraft:nether_brick_fence>,
    <minecraft:nether_brick_stairs>,
    <minecraft:netherbrick>,
    <minecraft:packed_ice>,
    <minecraft:potion:*>,
    <minecraft:pumpkin_pie>,
    <minecraft:pumpkin_seeds>,
    <minecraft:quartz>,
    <minecraft:quartz_block:*>,
    <minecraft:quartz_block>,
    <minecraft:quartz_stairs>,
    <minecraft:redstone_lamp>,
    <minecraft:sand:*>,
    <minecraft:sandstone:*>,
    <minecraft:sandstone>,
    <minecraft:sandstone_stairs>,
    <minecraft:shears>,
    <minecraft:speckled_melon>,
    <minecraft:snow_layer>,
    <minecraft:stained_hardened_clay:*>,
    <minecraft:stick>,
    <minecraft:sticky_piston>,
    <minecraft:stone>,
    <minecraft:stone_button>,
    <minecraft:stone_pressure_plate>,
    <minecraft:stone_axe>,
    <minecraft:stone_brick_stairs>,
    <minecraft:stone_hoe>,
    <minecraft:stone_pickaxe>,
    <minecraft:stone_shovel>,
    <minecraft:stone_slab:*>,
    <minecraft:stone_slab>,
    <minecraft:stone_stairs>,
    <minecraft:stone_sword>,
    <minecraft:stonebrick:*>,
    <minecraft:sugar>,
    <minecraft:tnt>,
    <minecraft:tnt_minecart>,
    <minecraft:trapped_chest>,
    <minecraft:wheat>,
    <minecraft:wooden_axe>,
    <minecraft:wooden_door>,
    <minecraft:wooden_hoe>,
    <minecraft:wooden_pickaxe>,
    <minecraft:wooden_shovel>,
    <minecraft:wooden_sword>,
    <minecraft:wool:*>,
    <minecraft:written_book>
]);

/*
    Recipes Stuff
*/

addShaped(carpet * 2, [
    [cloth, cloth]
]);

addShaped(itemFrame, [
    [stick, stick, stick],
    [stick, leather, stick],
    [stick, stick, stick]
]);

addShaped(painting, [
    [stick, stick, stick],
    [stick, cloth, stick],
    [stick, stick, stick]
]);

addShaped(coalBlock, [
    [coal, coal, coal],
    [coal, coal, coal],
    [coal, coal, coal]
]);

addShaped(bookshelf, [
    [lumber, lumber, lumber],
    [book, book, book],
    [lumber, lumber, lumber]
]);

addShaped(boat, [
    [lumber, null, lumber],
    [lumber, lumber, lumber]
]);

addShaped(carpentersHammer, [
    [null, hammerHead],
    [stick, null]
]);

addShaped(carpentersChisel, [
    [null, chiselHead],
    [stick, null]
]);

addShaped(carpentersBed, [
    [cloth, cloth, cloth],
    [carpentersBlocks, carpentersBlocks, carpentersBlocks]
]);

addShaped(horseArmor, [
    [null, cloth, hammer.transformDamage()],
    [ironSheet, ironSheet, ironSheet],
    [null, chisel.transformDamage(), null]
]);

addShapeless(stick * 2, [lumber, axe.transformDamage()]);
addShapeless(book, [paper, paper, paper, leather]);
addShapeless(carpentersBlocks * 3, [saw.transformDamage(), lumber, lumber, lumber]);

/*
    Dyes
*/

addShapeless(cyanDye * 2, [greenDye, blueDye]);
addShapeless(grayDye * 2, [inkSac, boneMeal]);
addShapeless(lighBlueDye * 2, [boneMeal, blueDye]);
addShapeless(lighGrayDye * 2, [boneMeal, grayDye]);
addShapeless(limeDye * 2, [greenDye, boneMeal]);
addShapeless(magentaDye * 2, [redDye, blueDye, pinkDye]);
addShapeless(orangeDye * 2, [yellowDye, redDye]);
addShapeless(pinkDye * 2, [boneMeal, redDye]);
addShapeless(purpleDye * 2, [blueDye, redDye]);
