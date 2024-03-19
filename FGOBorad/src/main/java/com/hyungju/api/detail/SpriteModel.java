package com.hyungju.api.detail;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

@JsonIgnoreProperties(ignoreUnknown =true)
public class SpriteModel{
    public Ascension ascension;
    public Costume costume;
}
