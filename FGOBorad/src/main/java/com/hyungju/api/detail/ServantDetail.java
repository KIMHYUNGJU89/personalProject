package com.hyungju.api.detail;

import java.util.List;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

import lombok.Data;

@Data
@JsonIgnoreProperties(ignoreUnknown =true)
public class ServantDetail {
	public List<Skills> skills;
	public String name;
	public ExtraAssets extraAssets;
	
}
