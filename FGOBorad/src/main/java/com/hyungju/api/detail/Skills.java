package com.hyungju.api.detail; 
import java.util.ArrayList;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

import lombok.Data; 
@Data
@JsonIgnoreProperties(ignoreUnknown =true)
public class Skills{
    public int id;
    public int num;
    public String name;
    public String originalName;
    public String ruby;
    public String detail;
    public String unmodifiedDetail;
    public String type;
    public int svtId;
    public int strengthStatus;
    public int priority;
    public int condQuestId;
    public int condQuestPhase;
    public int condLv;
    public int condLimitCount;
    public String icon;
    public ArrayList<Integer> coolDown;
    public ArrayList<Object> actIndividuality;
    public Script script;
    public ArrayList<Object> extraPassive;
    public ArrayList<Object> skillAdd;
    public ArrayList<SkillSvt> skillSvts;
    public ArrayList<Function> functions;
}
