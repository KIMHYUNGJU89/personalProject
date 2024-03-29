package com.hyungju.api.detail; 
import java.util.ArrayList; 
public class Root{
    public int id;
    public int collectionNo;
    public String name;
    public String originalName;
    public String ruby;
    public String battleName;
    public String originalBattleName;
    public int classId;
    public String className;
    public String type;
    public String flag;
    public ArrayList<Object> flags;
    public int rarity;
    public int cost;
    public int lvMax;
    public ExtraAssets extraAssets;
    public String gender;
    public String attribute;
    public ArrayList<Trait> traits;
    public int starAbsorb;
    public int starGen;
    public int instantDeathChance;
    public ArrayList<String> cards;
    public HitsDistribution hitsDistribution;
    public CardDetails cardDetails;
    public int atkBase;
    public int atkMax;
    public int hpBase;
    public int hpMax;
    public ArrayList<Integer> relateQuestIds;
    public ArrayList<Object> trialQuestIds;
    public int growthCurve;
    public ArrayList<Integer> atkGrowth;
    public ArrayList<Integer> hpGrowth;
    public ArrayList<Integer> bondGrowth;
    public ArrayList<Integer> expGrowth;
    public ArrayList<Integer> expFeed;
    public int bondEquip;
    public ArrayList<Integer> valentineEquip;
    public ArrayList<ValentineScript> valentineScript;
    public AscensionAdd ascensionAdd;
    public ArrayList<TraitAdd> traitAdd;
    public ArrayList<Object> svtChange;
    public ArrayList<Object> ascensionImage;
    public ArrayList<Object> overwrites;
    public AscensionMaterials ascensionMaterials;
    public SkillMaterials skillMaterials;
    public AppendSkillMaterials appendSkillMaterials;
    public CostumeMaterials costumeMaterials;
    public Coin coin;
    public Script script;
    public ArrayList<Skills> skills;
    public ArrayList<ClassPassive> classPassive;
    public ArrayList<ExtraPassive> extraPassive;
    public ArrayList<AppendPassive> appendPassive;
    public ArrayList<NoblePhantasm> noblePhantasms;
}
