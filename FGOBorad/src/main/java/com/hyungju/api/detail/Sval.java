package com.hyungju.api.detail; 
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty; 
@JsonIgnoreProperties(ignoreUnknown = true)
public class Sval{
    @JsonProperty("Rate") 
    public int rate;
    @JsonProperty("Turn") 
    public int turn;
    @JsonProperty("Count") 
    public int count;
    @JsonProperty("Value") 
    public int value;
    @JsonProperty("MotionChange") 
    public int motionChange;
    @JsonProperty("Target") 
    public int target;
    @JsonProperty("Individuality") 
    public int individuality;
    @JsonProperty("EventId") 
    public int eventId;
    @JsonProperty("RateCount") 
    public int rateCount;
    @JsonProperty("ShowState") 
    public int showState;
//    @JsonProperty("ActSet") 
//    public int ActSet;
 }
