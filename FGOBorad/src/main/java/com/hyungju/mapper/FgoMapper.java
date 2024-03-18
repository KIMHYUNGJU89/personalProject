package com.hyungju.mapper;

import java.util.ArrayList;

import org.springframework.stereotype.Repository;

import com.hyungju.api.ServantInfo;

@Repository
public interface FgoMapper {
	public void SaveServantData(ServantInfo info);
	public int DataCheck(int id);
	public ArrayList<String> idList(String className);
	public int SqlCheck(String className);
	public ArrayList<ServantInfo> getData(String className);
	public String getId(int id);
	public ArrayList<ServantInfo> getDetail(int id);
}
