package com.hyungju.api.detail;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

import lombok.Data;

@JsonIgnoreProperties(ignoreUnknown =true)
@Data
public class CharaGraph{
    public Ascension ascension;
    public Costume costume;
}
