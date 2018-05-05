package com.oracle.labor.common.util;

import java.io.IOException;

import org.jdom.Document;
import org.jdom.Element;
import org.jdom.JDOMException;
import org.jdom.input.SAXBuilder;

import com.oracle.labor.common.config.SystemConfig;


public class ReadXML {
	public static String getAppValue(String childname,String childChildName){
		String rt = "";
		try {
			String appPath = SystemConfig.getROOT_PATH();
			
			SAXBuilder sax = new SAXBuilder();
			Document doc=null;
			try {
				doc = sax.build(appPath);
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			Element ele_root = doc.getRootElement();		

			Element ele_child = ele_root.getChild(childname);
			 rt =  ele_child.getChildText(childChildName);
		} catch (JDOMException e) {
			e.printStackTrace();
			return "";
		}		

		return rt;
	}
}
