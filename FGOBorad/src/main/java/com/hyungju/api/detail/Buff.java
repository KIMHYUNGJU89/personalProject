package com.hyungju.api.detail; 
import java.util.ArrayList; 
public class Buff{
    public int id;
    public String name;
    public String originalName;
    public String detail;
    public String icon;
    public String type;
    public int buffGroup;
    public Script script;
    public OriginalScript originalScript;
    public ArrayList<Val> vals;
    public ArrayList<Tval> tvals;
    public ArrayList<CkSelfIndv> ckSelfIndv;
    public ArrayList<Object> ckOpIndv;
    public int maxRate;
}
