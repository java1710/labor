package com.oracle.labor.common.codetable;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Set;

import com.oracle.labor.common.config.IAppConfig;
import com.oracle.labor.common.util.DBCommon;


public class RegioncodeOperation implements IAppConfig{
	private static HashMap<String,String> map = new HashMap();
	public boolean init() {
		String sql = "select cd_id,cd_name from cdg_regioncode order by cd_index ";
		DBCommon mydb = new DBCommon();
		String[][] data = mydb.select(sql);
		if(data!=null&&data.length>0){
			int length = data.length;
			for(int i=0;i<length;i++){
				map.put(data[i][0], data[i][1]);
			}
		}
		return true;
	}
	 
	public static HashMap<String, String> getMap() {
		return map;
	}

	public static String getNameById(String id){
		if(id!=null){
			Object obj =  map.get(id);
			if(obj!=null){
				return obj.toString();
			}else{
				return null;
			}
		}else{
			return null;
		}
	}
	public static String getOption(){
		return getOption("");
	}
	public static String getOption(String code){
		StringBuffer rt = new StringBuffer("<option></option>");
		String name = "";
		Set<String> set = map.keySet();
		for(String id:set){
			name = map.get(id);
			if(code.equals(id)){
				rt.append("<option value='"+id+"' selected>"+name+"</option>");
			}else{
				rt.append("<option value='"+id+"'>"+name+"</option>");
			}
		}
		return rt.toString();
	}
	//得到全国所有省
	public static String getProvince(){
		String regex = "[\\d]{2}[0]{10}";
		StringBuffer rt = new StringBuffer("<option></option>");
		String name = "";
		Set<String> set = map.keySet();
		List<String> idlist = new ArrayList();
		for(String id:set){
			if(id.matches(regex)){
				idlist.add(id);
			}
		}
		String[] idArray = new String[idlist.size()];
		for(int i = 0;i < idArray.length;i++){
			idArray[i] = idlist.get(i).toString();
		}
		Arrays.sort(idArray);
		for(int i = 0;i < idArray.length;i++){
			name = map.get(idArray[i]);
			rt.append("<option value='"+idArray[i]+"'>"+name+"</option>");
		}
		if(idlist!=null){
			idlist.clear();
		}
		return rt.toString();
	} 
	//得到被选的行政区域
	public static String getSelectedRegion(String selectedId,String region){
		if(selectedId==null||"".equals(selectedId)||region==null||"".equals(region)){
			return "";
		}
		String regex = "";
		if("province".equals(region)){
			regex = "[\\d]{2}[0]{10}";
			selectedId=selectedId.substring(0, 2)+"0000000000";
		}else if("city".equals(region)){
			
			//北京特殊处理
			if(selectedId.startsWith("11")){
				regex = "("+selectedId.substring(0,2)+")(0[1-9]{1}|[1-9]{1}[\\d]{1})[\\d]{2}[0]{6}";
				selectedId=selectedId.substring(0, 6)+"000000";
			}else{
				regex = "("+selectedId.substring(0,2)+")(0[1-9]{1}|[1-9]{1}[\\d]{1})[0]{8}";
				selectedId=selectedId.substring(0, 4)+"00000000";
			}
			
		
		
		
		
		}else if("village".equals(region)){
			if(selectedId.startsWith("11")){
				regex = "("+selectedId.substring(0,6)+")(00[1-9]{1}|0[1-9]{1}[\\d]{1}|[1-9]{1}[\\d]{2})[0]{3}";
				selectedId=selectedId.substring(0, 9)+"000";
			}else{
				regex = "("+selectedId.substring(0,4)+")(0[1-9]{1}|[1-9]{1}[\\d]{1})[0]{6}";
				selectedId=selectedId.substring(0, 6)+"000000";
			}
			
		}else{
			return "";
		}
		Set<String> set = map.keySet();
		StringBuffer rt = new StringBuffer("<option></option>");
		String name = "";
		List<String> idlist = new ArrayList();
		for(String mapkey:set){
			if(mapkey.matches(regex)){
				idlist.add(mapkey);
			}
		}
		String[] idArray = new String[idlist.size()];
		for(int i = 0;i < idArray.length;i++){
			idArray[i] = idlist.get(i).toString();
		}
		Arrays.sort(idArray);
		for(int i = 0;i < idArray.length;i++){
			if(selectedId.equals(idArray[i])){
				name = (String)map.get(idArray[i]);
				rt.append("<option value='"+idArray[i]+"' selected>"+name+"</option>");
			}else{
				name = (String)map.get(idArray[i]);
				rt.append("<option value='"+idArray[i]+"'>"+name+"</option>");
			}
		}
		if(idlist!=null){
			idlist.clear();
		}
		return rt.toString();
	} 
	
	//依据正则表达式得到option
	public static String getOptionByRegex(String regex){
		int count = 0;
		StringBuffer rt = new StringBuffer("<option></option>");
		String name = "";
		List<String> idlist = new ArrayList();
		Set<String> set = map.keySet();
		for(String id:set){
			if(id.matches(regex)){
				count += 1;
				idlist.add(id);
			}
		}
		if(count==0){
			if(idlist!=null){
				idlist.clear();
			}
			rt = null;
			return "";
		}else{
			String[] idArray = new String[idlist.size()];
			for(int i = 0;i < idArray.length;i++){
				idArray[i] = idlist.get(i).toString();
			}
			Arrays.sort(idArray);
			for(int i = 0;i < idArray.length;i++){
				name = map.get(idArray[i]);
				rt.append("<option value='"+idArray[i]+"'>"+name+"</option>");
			}
			if(idlist!=null){
				idlist.clear();
			}
			return rt.toString();
		}
	}
}
