package com.google.play.util.other;

import java.security.MessageDigest;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class ToolUtils {
	/**
	 * 判断字符串是否为空
	 * 
	 * @param str
	 * @return
	 */
	public static boolean isEmpty(String str) {
		if (str == null) {
			return true;
		}

		Pattern pattern = Pattern.compile("\\s*");
		Matcher matcher = pattern.matcher(str);
		boolean b = matcher.matches();
		if (b) {
			return true;
		}
		return false;
	}

	/**
	 * 获得指定日期与当前日期相差的天数
	 * 
	 * @param uploadDateStr
	 * @return
	 */

	public static long compare(String uploadDateStr) {
		SimpleDateFormat df = new SimpleDateFormat("MMM d, yyyy",
				Locale.ENGLISH);
		long day = 0;
		try {
			java.util.Date dateDate = df.parse(uploadDateStr);
			java.util.Date nowDate = new Date();
			day = (nowDate.getTime() - dateDate.getTime())
					/ (24 * 60 * 60 * 1000);
			return day;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return day;
	}

	public static String encodeByMd5(String str) {
		MessageDigest messageDigest = null;
		try {
			messageDigest = MessageDigest.getInstance("MD5");
			messageDigest.reset();
			messageDigest.update(str.getBytes("UTF-8"));
			byte[] byteArray = messageDigest.digest();
			StringBuffer md5StrBuff = new StringBuffer();
			for (int i = 0; i < byteArray.length; i++) {
				if (Integer.toHexString(0xFF & byteArray[i]).length() == 1)
					md5StrBuff.append("0").append(
							Integer.toHexString(0xFF & byteArray[i]));
				else
					md5StrBuff.append(Integer.toHexString(0xFF & byteArray[i]));
			}
			return md5StrBuff.toString();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return str;

	}
	
	public static Boolean isUrlOrPackageName(String PackageNameOrUrl) {
			
		
		return false;
	}
}
