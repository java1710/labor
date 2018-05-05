package com.oracle.labor.common;

import java.io.File;
import java.io.IOException;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.Timer;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;

import org.jdom.Document;
import org.jdom.Element;
import org.jdom.JDOMException;
import org.jdom.input.SAXBuilder;

import com.oracle.labor.common.config.IAppConfig;
import com.oracle.labor.common.config.SystemConfig;


public class AppLoad extends HttpServlet{
	
	
	@Override
	public void init() throws ServletException {
		String loadPath  = "";
		try {
			String appPath = getServletContext().getRealPath("/")+"WEB-INF"+File.separator+"/app-config.xml";
			SystemConfig.setROOT_PATH(appPath);
			SAXBuilder sax = new SAXBuilder();
			System.out.println("==========================开始加载系统配置文件==========================");
			System.out.println("==========================配置文件路径"+appPath+"==========================");
			Document doc=null;
			try {
				doc = sax.build(appPath);
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			Element ele_root = doc.getRootElement();
			
			List<Element> list = ele_root.getChildren();
			
			for(Element ele_child:list){
				loadPath= ele_child.getAttributeValue("type");
				System.out.println("==========================开始加载"+loadPath+"==========================");
				IAppConfig config = (IAppConfig)(Class.forName(loadPath).newInstance());
				boolean flag = config.init();
				if(flag){
					System.out.println("==========================加载"+loadPath+"成功==========================");
				}else{
					System.out.println("==========================加载"+loadPath+"失败==========================");
					System.out.println("==========================1.请检查app-config.xml at "+loadPath+"==========================");
				}
			}
			System.out.println("==========================加载系统配置文件成功！==========================");
		} catch (JDOMException e) {

			System.out.println("==========================2.请检查app-config.xml at "+loadPath+"==========================");
		} catch (InstantiationException e) {

			System.out.println("==========================3.请检查app-config.xml at "+loadPath+"==========================");
		} catch (IllegalAccessException e) {

			System.out.println("==========================4.请检查app-config.xml at "+loadPath+"==========================");
		} catch (ClassNotFoundException e) {

			System.out.println("==========================5.请检查app-config.xml at "+loadPath+"==========================");
		};
	}
}
