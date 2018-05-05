package com.oracle.labor.common.codetable;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Set;

import com.oracle.labor.common.config.IAppConfig;
import com.oracle.labor.common.util.DBCommon;


public class SpecialtyOperation implements IAppConfig{
	private static HashMap<String,String> map = new HashMap();
	public boolean init() {
		String sql = "select cd_id,cd_name from cdl_specialty order by cd_index ";
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
    //得到工种行业的信息
	public static String getHy(){
		StringBuffer rt = new StringBuffer("<option></option>");
		String name = "";
		Set<String> set = map.keySet();
		for(String id:set){
			name = map.get(id);
			String string  = id.substring(1);
			if("000000".equals(string)){
				rt.append("<option value='"+id+"'>"+name+"</option>");
			}
		}
		return rt.toString();
	}
	//得到下属工种信息
	public static String getGzReg(String string){
		StringBuffer rt = new StringBuffer("<option></option>");
		String zhengze = string;
		String name = "";
		Set<String> set = map.keySet();
		for(String id:set){
			name = map.get(id);
			if(id.matches(zhengze)){
				rt.append("<option value='"+id+"'>"+name+"</option>");
			}
		}
		return rt.toString();
	}
	
	
	
	public static String getGz(String string){
		StringBuffer rt = new StringBuffer("<option></option>");
		
		
		
		String zhengze = string;
		
		//一级
		if(string.endsWith("000000")){
			zhengze="("+string.substring(0,1)+")"+"(0[1-9]{1}|[1-9]{1}[\\d]{1})[0]{4}";
		}else if(string.endsWith("0000")){
			zhengze="("+string.substring(0,3)+")"+"(0[1-9]{1}|[1-9]{1}[\\d]{1})[0]{2}";
		}else if(string.endsWith("00")){
			zhengze="("+string.substring(0,5)+")"+"([\\d]{2})";
		}
				
		return getGzReg(zhengze);
	}
	
	
	
//·-------------------------------------------------------------------------·//	
	/**
	 * @author Qyc
	 * @see 得到一个针对于某主键的Option内容
	 */
	public static String getSingleOption(String id){
		if(id==null||"".equals(id)){
			return "<option></option>";
		}
		StringBuffer rt = new StringBuffer("<option></option>");
		String name = "";
		Set<String> set = map.keySet();
		for(String mapkey:set){
			if(id.equals(mapkey)){
				name = map.get(mapkey);
					rt.append("<option value='"+mapkey+"' selected>"+name+"</option>");
					break;
				}
			}
		return rt.toString();
	}
	/**
	 * @author Qyc
	 * @see 得到有序的岗位名称
	 */
	public static String getGwmc(){
		return SpecialtyOperation.getOptionByRegex("[1-9]{1}[0]{6}");
	}
	/**
	 * @author Qyc
	 * @see 依据正则表达式得到有序的option
	 */
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
	
	public static String getSelectedGz(String selectedId,String gz){
		if(selectedId==null||"".equals(selectedId)||gz==null||"".equals(gz)){
			return "";
		}
		String regex = "";
		if("gw".equals(gz)){
			regex ="[\\d]{1}[0]{6}";
			selectedId=selectedId.substring(0, 1)+"000000";
		}else if("gz1".equals(gz)){
			regex = "("+selectedId.substring(0,1)+")"+"(0[1-9]{1}|[1-9]{1}[\\d]{1})[0]{4}";
			selectedId=selectedId.substring(0, 3)+"0000";		
		}else if("gz2".equals(gz)){
			regex = "("+selectedId.substring(0,3)+")"+"(0[1-9]{1}|[1-9]{1}[\\d]{1})[0]{2}";
			selectedId=selectedId.substring(0, 5)+"00";
		}else if("gz3".equals(gz)){
			regex = "("+selectedId.substring(0,5)+")"+"([\\d]{2})";
			selectedId=selectedId.substring(0, 7);
			
			
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
}
//·-------------------------------------------------------------------------·//