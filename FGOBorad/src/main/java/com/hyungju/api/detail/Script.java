package com.hyungju.api.detail; 
import java.util.ArrayList;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty; 
@JsonIgnoreProperties(ignoreUnknown =true)
public class Script{
    @JsonProperty("ProgressSelfTurn") 
    public int progressSelfTurn;
    @JsonProperty("NP_HIGHER")
    public ArrayList<Integer> NP_HiGHER;
}
