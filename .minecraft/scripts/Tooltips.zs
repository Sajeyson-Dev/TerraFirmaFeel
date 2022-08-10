import minetweaker.item.IItemStack;
import minetweaker.oredict.IOreDictEntry;

/*
    Author: Sajeyson
*/

function setOreType(ores as IOreDictEntry[], type as string) as void {
    for ore in ores {
        for item in ore.items {
            item.addTooltip(format.darkGray("> " + type));
        }
    }
}

setOreType([<ore:oreNormalCopper>, <ore:orePoorCopper>, <ore:oreRichCopper>, <ore:oreSmallCopper>], "Copper");
setOreType([<ore:oreNormalGold>, <ore:orePoorGold>, <ore:oreRichGold>, <ore:oreSmallGold>], "Gold");
setOreType([<ore:oreNormalPlatinum>, <ore:orePoorPlatinum>, <ore:oreRichPlatinum>, <ore:oreSmallPlatinum>], "Platinum");
setOreType([<ore:oreNormalIron>, <ore:orePoorIron>, <ore:oreRichIron>, <ore:oreSmallIron>], "Iron");
setOreType([<ore:oreNormalSilver>, <ore:orePoorSilver>, <ore:oreRichSilver>, <ore:oreSmallSilver>], "Silver");
setOreType([<ore:oreNormalTin>, <ore:orePoorTin>, <ore:oreRichTin>, <ore:oreSmallTin>], "Tin");
setOreType([<ore:oreNormalLead>, <ore:orePoorLead>, <ore:oreRichLead>, <ore:oreSmallLead>], "Lead");
setOreType([<ore:oreNormalBismuth>, <ore:orePoorBismuth>, <ore:oreRichBismuth>, <ore:oreSmallBismuth>], "Bismuth");
setOreType([<ore:oreNormalNickel>, <ore:orePoorNickel>, <ore:oreRichNickel>, <ore:oreSmallNickel>], "Nickel");
setOreType([<ore:oreNormalZinc>, <ore:orePoorZinc>, <ore:oreRichZinc>, <ore:oreSmallZinc>], "Zinc");
setOreType([<ore:oreRedstone>], "Redstone");
setOreType([<ore:oreDiamond>], "Diamond");
setOreType([<ore:oreLapis>], "Lapis");
setOreType([<ore:oreSylvite>], "Fertilizer");
