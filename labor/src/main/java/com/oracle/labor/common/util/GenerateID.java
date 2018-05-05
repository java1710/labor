package com.oracle.labor.common.util;
import java.util.Calendar;

public class GenerateID {
	private static Calendar m_latest = Calendar.getInstance();

	private static int m_serial = 0;

	public GenerateID() {
	}

	public static synchronized String getGenerateId() {
		Calendar rightNow;
		do {
			rightNow = Calendar.getInstance();
			if (!rightNow.equals(m_latest)) {
				m_serial = 0;
				m_latest = rightNow;
				break;
			}
			if (m_serial < 255) {
				m_serial++;
				break;
			}
			try {
				Thread.sleep(1L);
			} catch (InterruptedException interruptedexception) {
			}
		} while (true);
		long year = rightNow.get(1);
		long month = rightNow.get(2) + 1;
		long day = rightNow.get(5);
		long hour = rightNow.get(11);
		long minute = rightNow.get(12);
		long second = rightNow.get(13);
		long millisecond = rightNow.get(14);
		year <<= 36;
		month <<= 32;
		day <<= 27;
		hour <<= 22;
		minute <<= 16;
		second <<= 10;
		long t48 = year | month | day | hour | minute | second | millisecond;
		String ser = Integer.toHexString(m_serial);
		ser = strPad(ser, 2);
		String sid = String.valueOf(Long.toHexString(t48))
				+ String.valueOf(ser);
		sid = strPad(sid, 14);
		return sid;
	}

	private static String strPad(String str, int len) {
		int l = str.length();
		String s = str;
		for (int i = 0; i < len - l; i++)
			s = "0".concat(String.valueOf(String.valueOf(s)));

		return s;
	}
	public static void main(String[] args) {
		System.out.println(GenerateID.getGenerateId());
	}
}

