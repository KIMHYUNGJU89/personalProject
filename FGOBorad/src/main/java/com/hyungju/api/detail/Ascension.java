package com.hyungju.api.detail; 
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;

import lombok.Data; 
@Data
@JsonIgnoreProperties(ignoreUnknown =true)
public class Ascension{
    @JsonProperty("1") 
    public String _1;
    @JsonProperty("2") 
    public String _2;
    @JsonProperty("3") 
    public String _3;
    @JsonProperty("4") 
    public String _4;
    //이게 발생조건인데 왜그런거지?
    @JsonProperty("0") 
    public String _0;
}
