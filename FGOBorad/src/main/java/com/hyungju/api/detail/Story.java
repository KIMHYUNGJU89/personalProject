package com.hyungju.api.detail; 
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;

import lombok.Data; 
@Data
@JsonIgnoreProperties(ignoreUnknown =true)
public class Story{
    @JsonProperty("98060000") 
    public String _98060000;
}
