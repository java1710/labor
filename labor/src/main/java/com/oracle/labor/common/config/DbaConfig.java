package com.oracle.labor.common.config;

import com.oracle.labor.common.util.ReadXML;

public class DbaConfig implements IAppConfig{
	private static String DBA;
	private static String DRIVER;
	private static String URL;
	private static String USERNAME;
	private static String PASSWORD;
	private static int INITNUM;
	private static int MAXNUM;
	private static int MAXIDLE;
	private static int MAXWAIT;
	
	public boolean init() {
		DBA = ReadXML.getAppValue("dba-config", "dba");
		DRIVER = ReadXML.getAppValue("dba-config", "dba-driver");
		URL = ReadXML.getAppValue("dba-config", "dba-url");
		USERNAME = ReadXML.getAppValue("dba-config", "dba-username");
		PASSWORD = ReadXML.getAppValue("dba-config", "dba-password");
		INITNUM = Integer.parseInt(ReadXML.getAppValue("dba-config", "dba-initnum"));
		MAXNUM = Integer.parseInt(ReadXML.getAppValue("dba-config", "dba-maxnum"));
		MAXIDLE = Integer.parseInt(ReadXML.getAppValue("dba-config", "dba-maxidle"));
		MAXWAIT = Integer.parseInt(ReadXML.getAppValue("dba-config", "dba-maxwait"));
		return true;
	}

	public static String getDBA() {
		return DBA;
	}

	public static String getDRIVER() {
		return DRIVER;
	}

	public static String getPASSWORD() {
		return PASSWORD;
	}

	public static String getURL() {
		return URL;
	}

	public static String getUSERNAME() {
		return USERNAME;
	}

	public static int getINITNUM() {
		return INITNUM;
	}

	public static int getMAXNUM() {
		return MAXNUM;
	}

	public static int getMAXIDLE() {
		return MAXIDLE;
	}

	public static int getMAXWAIT() {
		return MAXWAIT;
	}

}
