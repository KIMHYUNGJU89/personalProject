package com.hyungju.mapper;

import java.util.ArrayList;

import org.springframework.stereotype.Repository;

import com.hyungju.api.ServantInfo;

@Repository
public interface FgoMapper {
	public void SaveServantData(ServantInfo info);
	public int DataCheck(int id);
	public ArrayList<ServantInfo> getData(String className);
	public ServantInfo getEachData(int id);
	public ArrayList<ServantInfo> getDetail(int id);
	public void SaveJsonData(ServantInfo info);
	public int CountJsonData(int id);
	public String SelectJsonData(int id);
}
