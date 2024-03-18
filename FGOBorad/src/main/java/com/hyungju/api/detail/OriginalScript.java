package com.hyungju.api.detail; 
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty; 
@JsonIgnoreProperties(ignoreUnknown =true)
public class OriginalScript{
    @JsonProperty("ProgressSelfTurn") 
    public int progressSelfTurn;
}
