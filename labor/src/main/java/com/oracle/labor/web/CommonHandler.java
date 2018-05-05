package com.oracle.labor.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.oracle.labor.common.codetable.LanguageOperation;
import com.oracle.labor.common.codetable.NationOperation;
import com.oracle.labor.common.codetable.RegioncodeOperation;

@Controller
@RequestMapping("/service")
public class CommonHandler {

	//返回文本;
	@ResponseBody
	@RequestMapping(value="/language",produces="text/html;charset=UTF-8")
	public String getLanguage(String val) {
		String result=LanguageOperation.getOption(val);
		System.out.println(result);
		return result;
	}
		
	/**
	 * 获得民族的下拉列表 ;
	 */
	@ResponseBody
	@RequestMapping(value="/nations/{value}",produces="text/html;charset=UTF-8")
	public String getNations(@PathVariable("value") String value) {
		return NationOperation.getOption(value);
	}
	
	/**
	 * 获得地区的下拉列表 
	 * @param region:区域类别，province,city,village
	 * @param code:被选中的地区编码
	 * @return
	 */
	@ResponseBody
	@RequestMapping(value="/regions",produces="text/html;charset=UTF-8")
	public String getRegions(String region,String code) {
		if(code==null||"".equals(code)) {
			return RegioncodeOperation.getProvince();
		}else {
			return RegioncodeOperation.getSelectedRegion(code,region);
		}		
	}
	
}



