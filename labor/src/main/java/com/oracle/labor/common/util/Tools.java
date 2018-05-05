package com.oracle.labor.common.util;

import java.text.ParseException;
import java.text.ParsePosition;
import java.text.SimpleDateFormat;

import java.util.Calendar;
import java.util.Date;

public class Tools {
    /**
     * 将给定的字符串截取，得到指定长度的字符串(解决了对中文字符截取一半的问题)。

     * @param sourceString 给定的源字符串   如“伟大的领袖毛主席”

     * @param subLength     截取的长度          如“10”

     * @return						 截取后的字符串  如“伟大的领袖..bStr(String sourceString, int subLength) {
    	String newStr = sourceString;
		byte[] data = newStr.getBytes();
		if (data.length <= subLength){
			return newStr;
		}
		byte[] strTemp = new byte[subLength];
		System.arraycopy(data, 0, strTemp, 0, subLength);
		data = strTemp;
		int count = 0;
		for (int i = 0; i < data.length && data[data.length - 1 - i] < 0; i++){
			count++;
		}
		
		if(count%2==1){
			byte tmp2[] = new byte[data.length - 1];
			System.arraycopy(data, 0, tmp2, 0, data.length - 1);
			data = tmp2;	
		}
		String retString = new String(data).concat("...");
		return retString;
    }
    /**
     * 得到当前格式的系统时间

     * @param format
     * @return
     */
    public static String getDate(String format){
        if(format==null||format.equals("")){
            return "";
        }
        Date mydate = new Date(System.currentTimeMillis());
        SimpleDateFormat sdf = new SimpleDateFormat(format);
        String rt = sdf.format(mydate);
        return rt;
    }  
    public static String toTrim(String str){
    	if(str==null){
    		return "";
    	}
    	if(str.equals("NULL")||str.equals("null")){
    		return "";
    	}
    	return str.trim();  	
    }
	/**
	 * 输入时间字符串，原时间字符串格式，和需要得到的时间字符串格式,得到需要格式的时间字符串。

	 * 注意：y为年，M为月，d为日。H为小时(24小时)，h为小时（12小时）m为分钟，s为秒。注意大小写。

	 * 		 zzzz为时区，EEE为星期，MMMM为月份(大写)，a为上下午。

	 * @param datetime   需要转换格式的时间字符 如2006040123595。

	 * @param oldFormat  原时间字符串格式 如"yyyyMMddHHmmss"。注意，该格式必须与给定时间字符串的格式一致。

	 * @param newFormat  原时间字符串格式 如"yyyy-M-d H:m:s"。

	 * 
	 * @return 需要格式的时间字符串 如：2006-04-01 23:59:59
	 */    
    public static String formatDate(String datetime,String oldFormat,String newFormat){
    	Date newDate = null;
    	if(datetime==null||oldFormat==null||newFormat==null){
    		return "";
    	}
    	SimpleDateFormat sdf = new SimpleDateFormat(oldFormat);
    	try {
			Date date = sdf.parse(datetime);
			Calendar calendar = Calendar.getInstance();
			calendar.clear();
			calendar.setTime(date);
			newDate = calendar.getTime();
			sdf = new SimpleDateFormat(newFormat);		
		} catch (ParseException e) {
			//记录日志
			return "";
		}
    	return sdf.format(newDate);
    }
	/**
	 * 得到给定时间前（后）N小时的时间字符串。

	 * @param datetime  给定的时间字符串，如"20060401235959"。

	 * @param oldFormat 给定的时间字符串格式，如"yyyyMMddHHmmss"
	 * @param newFormat 新时间的字符串格式，如yyyyMMdd。

	 * @param difftime  需要偏移的时间，精确到小时，如24（前）或-24（后）。

	 * @return 得到给定时间前（后）N小时的时间字符串，20060331
	 */
    public String getBeforeTime(String datetime, String oldFormat,String newFormat, int difftime)
	{
    	String newTime = null;
		
		if (datetime == null || oldFormat == null) {
			return "";
		} 
		//得到给定时间的Calendar
		Calendar calendar = this.getCalendar(datetime, oldFormat);
		if(calendar==null){
			return "";
		}
		//得到给定时间的，精确到小时(24小时)。

		calendar.add(Calendar.HOUR_OF_DAY,-difftime);
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat(newFormat);
        newTime = simpleDateFormat.format(calendar.getTime());
		return newTime;
	}    
    
	private Calendar getCalendar(String datetime, String dateFormat) {
		Calendar calendar = null;
	
		if (datetime == null || dateFormat == null) {
			return null;
		}
		SimpleDateFormat simpleDateFormat = new SimpleDateFormat(dateFormat);
		// 从给定时间字符串的第一位开始分析,返回Date类型
		Date newdate = simpleDateFormat.parse(datetime,
				new ParsePosition(0));
		if (newdate == null) {
			return null;
		}
		calendar = Calendar.getInstance();
		calendar.clear();
		calendar.setTime(newdate);
		return calendar;	
	}
	//14位时间-8位时间
	public static String parseDate(String date_14,Character sign){
		if(date_14==null||"".equals(date_14)||date_14.length()!=14){
			return "";
		}
		StringBuffer date_8 = new StringBuffer();
		date_8.append(date_14.substring(0,4));
		date_8.append(sign.toString());
		date_8.append(date_14.substring(4,6));
		date_8.append(sign.toString());
		date_8.append(date_14.substring(6,8));
		return date_8.toString();
	}
	//8位时间添加符号
	public static String insertSign(String date_8,Character sign){
		if(date_8==null||"".equals(date_8)||date_8.length()!=8){
			return "";
		}
		StringBuffer new_date = new StringBuffer();
		new_date.append(date_8.substring(0,4));
		new_date.append(sign.toString());
		new_date.append(date_8.substring(4,6));
		new_date.append(sign.toString());
		new_date.append(date_8.substring(6));
		return new_date.toString();
	} 
	//去8位时间符号
	public static String deleteSign(String date_8_sign){
		if(date_8_sign==null||"".equals(date_8_sign)||date_8_sign.length()!=10){
			return "";
		}
		StringBuffer new_date = new StringBuffer();
		new_date.append(date_8_sign.substring(0,4));
		new_date.append(date_8_sign.substring(5,7));
		new_date.append(date_8_sign.substring(8));
		return new_date.toString();
	}
}