package com.hyungju.service;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.google.gson.Gson;
import com.google.gson.JsonArray;
import com.google.gson.JsonObject;
import com.hyungju.api.ServantInfo;
import com.hyungju.api.detail.ServantDetail;
import com.hyungju.mapper.FgoMapper;

import lombok.extern.log4j.Log4j;

@Log4j
@Service
//@AllArgsConstructor
public class FgoServiceImpl implements FgoService {

	@Autowired
	private FgoMapper mapper;
	ArrayList<ServantInfo> saberInfoList = new ArrayList<>();


	// 서번트 기본정보 테이블 id체크 메서드
	public boolean SqlCheck(int id) {
		if (mapper.DataCheck(id) == 0) {
			// 데이터베이스(테이블 안에 컬럼)에 해당 id 값이 없을 경우 실패
			return false;
		} else {
			// 값이 있을 경우 진실
			return true;
		}
	}
	
	//서번트 기본정보를 API주소를 통해 받아오고 데이터베이스에 정보가있다면 데이터베이스에서 받아오게하는 메서드 , api는 최종출력함수에서 변수를만들고 여기서 매개변수로 받아옴.
	private ArrayList<ServantInfo> getServantDataFromAPI(String className, String apiUrl) throws IOException {
		ArrayList<ServantInfo> servantInfoList = new ArrayList<>();
		try {
			URL url = new URL(apiUrl);
			HttpURLConnection connection = (HttpURLConnection) url.openConnection();
			connection.setRequestMethod("GET");

			int responseCode = connection.getResponseCode();
			if (responseCode == HttpURLConnection.HTTP_OK) {
				BufferedReader reader = new BufferedReader(new InputStreamReader(connection.getInputStream()));
				StringBuilder response = new StringBuilder();
				String line;
				while ((line = reader.readLine()) != null) {
					response.append(line);
				}
				reader.close();
				String jsonData = response.toString();
				Gson gson = new Gson();
				JsonArray jsonArray = gson.fromJson(jsonData, JsonArray.class);

				// 데이터베이스에 해당 id가 있는지 확인합니다.
				for (int i = 0; i < jsonArray.size(); i++) {
					JsonObject jsonObject = jsonArray.get(i).getAsJsonObject();
					int id = jsonObject.get("id").getAsInt();

					// 데이터베이스에 없는 경우에만 추가합니다.
					if (!SqlCheck(id)) {
						String name = jsonObject.get("name").getAsString();
						className = jsonObject.get("className").getAsString();
						int rarity = jsonObject.get("rarity").getAsInt();
						String face = jsonObject.get("face").getAsString();

						if (!servantInfoList.stream().anyMatch(info -> info.getId() == id)) {
							ServantInfo info = new ServantInfo();
							info.setId(id);
							info.setName(name);
							info.setClassName(className);
							info.setRarity(rarity);
							info.setFace(face);

							mapper.SaveServantData(info);
							servantInfoList.add(info);
						}
					}
				}
			} else {
				System.out.println("Failed to fetch data from the URL. Response code: " + responseCode);
			}

			connection.disconnect();

		} catch (IOException e) {
			e.printStackTrace();
		}
		return servantInfoList;
	}

	public ServantDetail getServantDetail(int id) throws IOException {
		ServantDetail ServantDetailList = new ServantDetail();
		String apiUrl = "https://api.atlasacademy.io/nice/KR/servant/" + id;
		String jsonData;
		try {
			URL url = new URL(apiUrl);
			HttpURLConnection connection = (HttpURLConnection) url.openConnection();
			connection.setRequestMethod("GET");
			int responseCode = connection.getResponseCode();
			if (responseCode == HttpURLConnection.HTTP_OK) {

				
				if(mapper.CountJsonData(id) == 1) {
					
					jsonData = mapper.SelectJsonData(id);
					System.out.println("데이터베이스 제이슨데이터쓰겠음");
				}else {
					BufferedReader reader = new BufferedReader(new InputStreamReader(connection.getInputStream()));
					StringBuilder response = new StringBuilder();
					String line;
					while ((line = reader.readLine()) != null) {
						response.append(line);
					}
					reader.close();
					// 제이슨을 스트링열로 전환
					jsonData = response.toString();
					ServantInfo info = new ServantInfo();
					info.setId(id);
					info.setJsonData(jsonData);
					System.out.println("제이슨데이터 데이터베이스에저장");
					mapper.SaveJsonData(info);
				}
				ObjectMapper objectmapper = new ObjectMapper();
				System.out.println("제이슨데이터:" + jsonData);
				
				try {
					// 제이슨 문자열을 해당 객체로 변환
					ServantDetailList = objectmapper.readValue(jsonData, ServantDetail.class);
				} catch (Exception e) {
					e.printStackTrace();
				}
				System.out.println("다 들어갔니?:" + ServantDetailList);
				return ServantDetailList;
			} else if (responseCode == HttpURLConnection.HTTP_NOT_FOUND) {

				if(mapper.CountJsonData(id) == 1) {
					jsonData = mapper.SelectJsonData(id);
					System.out.println("데이터베이스 제이슨데이터쓰겠음");
				}else{
					apiUrl = "https://api.atlasacademy.io/nice/JP/servant/" + id;
					url = new URL(apiUrl);
					connection = (HttpURLConnection) url.openConnection();
					connection.setRequestMethod("GET");
					BufferedReader reader = new BufferedReader(new InputStreamReader(connection.getInputStream()));
					StringBuilder response = new StringBuilder();
					String line;
					while ((line = reader.readLine()) != null) {
						response.append(line);
					}
					reader.close();
					// 제이슨을 스트링열로 전환
					jsonData = response.toString();
					ServantInfo info = new ServantInfo();
					info.setId(id);
					info.setJsonData(jsonData);
					System.out.println("제이슨데이터 데이터베이스에저장");
					mapper.SaveJsonData(info);
				}
				
					
				ObjectMapper objectmapper = new ObjectMapper();
//				System.out.println("제이슨데이터:" + jsonData);
				try {
					// 제이슨 문자열을 해당 객체로 변환
					ServantDetailList = objectmapper.readValue(jsonData, ServantDetail.class);
				} catch (Exception e) {
					e.printStackTrace();
				}
//				System.out.println("다 들어갔니?:" + ServantDetailList);
				return ServantDetailList;

			} else {
				System.out.println("Failed to fetch data from the URL. Response code: " + responseCode);
			}

			connection.disconnect();

		} catch (IOException e) {
			e.printStackTrace();
		}
		return ServantDetailList;
	}

	//최종데이터출력 메서드
	public ArrayList<ServantInfo> getServantData(String className) throws IOException {
		ArrayList<ServantInfo> mergedList = new ArrayList<>();
		String krApiUrl = "https://api.atlasacademy.io/basic/KR/servant/search?className=" + className;
		String jpApiUrl = "https://api.atlasacademy.io/basic/JP/servant/search?className=" + className;
		
		try {
			mergedList.addAll(getServantDataFromAPI(className, krApiUrl));
			mergedList.addAll(getServantDataFromAPI(className, jpApiUrl));
			mergedList.removeAll(mapper.getData(className));
			mergedList.addAll(mapper.getData(className));
		} catch (IOException e) {
			e.printStackTrace();
		}
		return mergedList;
	}
}
