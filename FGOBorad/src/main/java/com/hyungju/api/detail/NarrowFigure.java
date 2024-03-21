package com.hyungju.api.detail;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

import lombok.Data;

@Data
@JsonIgnoreProperties(ignoreUnknown =true)
public class NarrowFigure{
    public Ascension ascension;
    public Costume costume;
}
