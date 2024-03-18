package com.hyungju.api.detail; 
import java.util.ArrayList;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties; 
@JsonIgnoreProperties(ignoreUnknown =true)
public class Function{
    public int funcId;
    public String funcType;
    public String funcTargetType;
    public String funcTargetTeam;
    public String funcPopupText;
    public String funcPopupIcon;
    public ArrayList<Object> functvals;
    public ArrayList<Object> funcquestTvals;
    public ArrayList<Object> funcGroup;
    public ArrayList<Buff> buffs;
    public ArrayList<Sval> svals;
    public ArrayList<Svals2> svals2;
    public ArrayList<Svals3> svals3;
    public ArrayList<Svals4> svals4;
    public ArrayList<Svals5> svals5;
}
