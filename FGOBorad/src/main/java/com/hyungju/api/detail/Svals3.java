package com.hyungju.api.detail; 
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;

import lombok.Data; 
@Data
@JsonIgnoreProperties(ignoreUnknown =true)
public class Svals3{
    @JsonProperty("Rate") 
    public int rate;
    @JsonProperty("Value") 
    public int value;
}
