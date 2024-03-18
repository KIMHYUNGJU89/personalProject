package com.hyungju.api.detail; 
import java.util.ArrayList;

import com.fasterxml.jackson.annotation.JsonProperty; 
public class Item10{
    public int id;
    public String name;
    public String originalName;
    public String type;
    @JsonProperty("uses") 
    public ArrayList<String> myuses;
    public String detail;
    public ArrayList<Individuality> individuality;
    public String icon;
    public String background;
    public int value;
    public int priority;
    public int dropPriority;
    public int startedAt;
    public int endedAt;
    public ArrayList<Object> itemSelects;
}
