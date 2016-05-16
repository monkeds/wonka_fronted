package com.monkeds.wonka_fronted.util;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.Period;
import java.time.Year;
import java.time.ZoneId;
import java.time.temporal.ChronoUnit;
import java.util.Date;
import java.util.Locale;

import com.monkeds.wonka_fronted.constants.Constants;

public class DateUtil {
	
	public static int getAge(Date _birthday){
		LocalDate today = Constants.NOW().toInstant().atZone(ZoneId.systemDefault()).toLocalDate();
		LocalDate birthday = _birthday.toInstant().atZone(ZoneId.systemDefault()).toLocalDate();
		Period period = Period.between(birthday, today);
		return period.getYears();
//		int result =  (int) ChronoUnit.YEARS.between(birthday, today);
//		return result;
	}

	public static String dateToString(Date date, String pattern){
		SimpleDateFormat sdf = new SimpleDateFormat(pattern,new Locale("es", "PE"));
		return sdf.format(date);
	}
	
	public static Date stringToDate(String dateString, String pattern){
		Date result = null;
		SimpleDateFormat sdf = new SimpleDateFormat(pattern);
		try {
			result = sdf.parse(dateString);
		} catch (ParseException e) {
		}
		return result;
	}
}
