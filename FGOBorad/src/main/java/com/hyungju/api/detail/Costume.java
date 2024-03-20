package com.hyungju.api.detail;  
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;

import lombok.Data; 
@Data
@JsonIgnoreProperties(ignoreUnknown =true)
public class Costume{
    @JsonProperty("100130") 
    public String _100130;
}
