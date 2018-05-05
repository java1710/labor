package com.oracle.labor.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.oracle.labor.common.codetable.LanguageOperation;
import com.oracle.labor.common.codetable.NationOperation;

@Controller
public class CommonHandler {

	//返回文本;
	@ResponseBody
	@RequestMapping(value="/service/language",produces="text/html;charset=UTF-8")
	public String getLanguage(String val) {
		String result=LanguageOperation.getOption(val);
		System.out.println(result);
		return result;
	}
		
	/**
	 * 获得民族的下拉列表 ;
	 */
	@ResponseBody
	@RequestMapping(value="/service/nations/{value}",produces="text/html;charset=UTF-8")
	public String getNations(@PathVariable("value") String value) {
		return NationOperation.getOption(value);
	}
	
}



