package com.oracle.labor.common;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

public class PageInfo {
	
	//查询结果
	private List list=new ArrayList();
	//每页的记录数
	private int recordSize=5;
	//总记录数
	private int recordCount;
	
	//总记页数
	private int pageCount;
	
	//当前页
	private int currentPage=1;
	
	
	//url
	private String url;


	public List getList() {
		return list;
	}


	public void setList(List list) {
		this.list = list;
	}


	public int getRecordSize() {
		return recordSize;
	}


	public void setRecordSize(int recordSize) {
		this.recordSize = recordSize;
	}


	public int getRecordCount() {
		return recordCount;
	}


	public void setRecordCount(int recordCount) {
		this.recordCount = recordCount;
	}


	public int getPageCount() {
		return this.recordCount/this.recordSize+(this.recordCount%

this.recordSize==0?0:1);
	}


	public void setPageCount(int pageCount) {
		this.pageCount = pageCount;
	}


	public int getCurrentPage() {
		return currentPage;
	}


	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}


	public String getUrl() {
		return url;
	}


	public void setUrl(String url) {
		this.url = url;
	}


	public PageInfo() {
		super();
	}


	public PageInfo(HttpServletRequest request) {
		String current=request.getParameter("currentPage");
		
		if(current!=null){
			//赋给pageInfo
			this.setCurrentPage(Integer.valueOf(current));
		}
		
		//获得uri:			
		this.setUrl(request.getRequestURI());
		
	}
	

}
