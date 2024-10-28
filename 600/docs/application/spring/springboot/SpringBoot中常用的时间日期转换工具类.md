#### 常用的时间日期转换方式

* 日期格式化yyyy-MM-dd   `String->Date`

```java
	/**
     * 日期格式化yyyy-MM-dd
     *
     * @param date
     * @return
     */	
	public static Date formatDate(String date, String format) {
        try {
            return new SimpleDateFormat(format).parse(date);
        } catch (ParseException e) {
            e.printStackTrace();
        }
        return null;
    }
```

* 日期格式化yyyy-MM-dd   `Date->String`

```java
/**
     * 日期格式化yyyy-MM-dd
     *
     * @param date
     * @return
     */
    public static String getDateFormat(Date date) {
        return new SimpleDateFormat("yyyy-MM-dd").format(date);
    }
```

* 日期格式化yyyy-MM-dd HH:mm:ss    `Date->String`

```java
	/**
     * 日期格式化yyyy-MM-dd HH:mm:ss
     *
     * @param date
     * @return
     */	
	public static String getDateTimeFormat(Date date) {
        return new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(date);
    }
```

* 时间格式化

```java
	/**
     * 时间格式化
     *
     * @param date
     * @return HH:mm:ss
     */	
	public static String getTimeFormat(Date date) {
        return new SimpleDateFormat("HH:mm:ss").format(date);
    }
```

* 日期格式化

```java
 /**
     * 日期格式化
     *
     * @param date
     * @return
     */
    public static String getDateFormat(Date date, String formatStr) {

            return new SimpleDateFormat(formatStr).format(date);
    }
```

* 日期格式化

```java
/**
     * 日期格式化
     *
     * @param date
     * @return
     */
    public static Date getDateFormat(String date) {
        try {
            return new SimpleDateFormat("yyyy-MM-dd").parse(date);
        } catch (ParseException e) {
            e.printStackTrace();
        }
        return null;
    }
```

* 时间格式化

```java
 /**
     * 时间格式化
     *
     * @param date
     * @return
     */
    public static Date getDateTimeFormat(String date) {
        try {
            return new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").parse(date);
        } catch (ParseException e) {
            e.printStackTrace();
        }
        return null;
    }
```

* 获取当前日期星期一日期

```java
 /**
     * 获取当前日期星期一日期
     *
     * @return date
     */
    public static Date getFirstDayOfWeek() {
        private Calendar gregorianCalendar = null;
        gregorianCalendar.setFirstDayOfWeek(Calendar.MONDAY);
        gregorianCalendar.setTime(new Date());
        gregorianCalendar.set(Calendar.DAY_OF_WEEK, gregorianCalendar.getFirstDayOfWeek()); // Monday
        return gregorianCalendar.getTime();
    }
```

* 获取当前日期星期日日期

```java
/**
     * 获取当前日期星期日日期
     *
     * @return date
     */
    public static Date getLastDayOfWeek() {
        private Calendar gregorianCalendar = null;
        gregorianCalendar.setFirstDayOfWeek(Calendar.MONDAY);
        gregorianCalendar.setTime(new Date());
        gregorianCalendar.set(Calendar.DAY_OF_WEEK, gregorianCalendar.getFirstDayOfWeek() + 6); // Monday
        return gregorianCalendar.getTime();
    }
```

* 获取指定日期周的第一天	

```java
 /**
     * 获取日期星期一日期
     *
     * @param 指定日期
     * @return date
     */
    public static Date getFirstDayOfWeek(Date date) {
        private Calendar gregorianCalendar = null;
        if (date == null) {
            return null;
        }
        gregorianCalendar.setFirstDayOfWeek(Calendar.MONDAY);
        gregorianCalendar.setTime(date);
        gregorianCalendar.set(Calendar.DAY_OF_WEEK, gregorianCalendar.getFirstDayOfWeek()); // Monday
        return gregorianCalendar.getTime();
    }
```

* 获取指定日期周的最后一天

```java
/**
     * 获取日期星期一日期
     *
     * @param 指定日期
     * @return date
     */
    public static Date getLastDayOfWeek(Date date) {
        private Calendar gregorianCalendar = null;
        if (date == null) {
            return null;
        }
        gregorianCalendar.setFirstDayOfWeek(Calendar.MONDAY);
        gregorianCalendar.setTime(date);
        gregorianCalendar.set(Calendar.DAY_OF_WEEK, gregorianCalendar.getFirstDayOfWeek() + 6); // Monday
        return gregorianCalendar.getTime();
    }
```

* 获取当前月的第一天

```java
   /**
     * 获取当前月的第一天
     *
     * @return date
     */
    public static Date getFirstDayOfMonth() {
        private Calendar gregorianCalendar = null;
        gregorianCalendar.setTime(new Date());
        gregorianCalendar.set(Calendar.DAY_OF_MONTH, 1);
        return gregorianCalendar.getTime();
    }
```

* 获取当前月的最后一天

```java
 /**
     * 获取当前月的最后一天
     *
     * @return
     */
    public static Date getLastDayOfMonth() {
         private Calendar gregorianCalendar = null;
        gregorianCalendar.setTime(new Date());
        gregorianCalendar.set(Calendar.DAY_OF_MONTH, 1);
        gregorianCalendar.add(Calendar.MONTH, 1);
        gregorianCalendar.add(Calendar.DAY_OF_MONTH, -1);
        return gregorianCalendar.getTime();
    }
```

* 获取指定日期的前一天

```java
    /**
     * 获取日期前一天
     *
     * @param date
     * @return
     */
    public static Date getDayBefore(Date date) {
        private Calendar gregorianCalendar = null;
        gregorianCalendar.setTime(date);
        int day = gregorianCalendar.get(Calendar.DATE);
        gregorianCalendar.set(Calendar.DATE, day - 1);
        return gregorianCalendar.getTime();
    }
```

* 获取指定日期的后一天

```java
   /**
     * 获取日期后一天
     *
     * @param date
     * @return
     */
    public static Date getDayAfter(Date date) {
        private Calendar gregorianCalendar = null;
        gregorianCalendar.setTime(date);
        int day = gregorianCalendar.get(Calendar.DATE);
        gregorianCalendar.set(Calendar.DATE, day + 1);
        return gregorianCalendar.getTime();
    }
```

* 获取当前年月日

```java
 /**
     * 获取当前年
     *
     * @return
     */
    public static int getNowYear() {
        Calendar d = Calendar.getInstance();
        return d.get(Calendar.YEAR);
    }

    /**
     * 获取当前月份
     *
     * @return
     */
    public static int getNowMonth() {
        Calendar d = Calendar.getInstance();
        return d.get(Calendar.MONTH) + 1;
    }

    /**
     * 获取当月天数
     *
     * @return
     */
    public static int getNowMonthDay() {
        Calendar d = Calendar.getInstance();
        return d.getActualMaximum(Calendar.DATE);
    }
```

* 获取时间段的前一天

```java
 /**
     * 获取时间段的每一天
     *
     * @param 开始日期
     * @param 结算日期
     * @return 日期列表
     */
    public static List<Date> getEveryDay(Date startDate, Date endDate) {
        if (startDate == null || endDate == null) {
            return null;
        }
        // 格式化日期(yy-MM-dd)
        startDate = DateUtil.getDateFormat(DateUtil.getDateFormat(startDate));
        endDate = DateUtil.getDateFormat(DateUtil.getDateFormat(endDate));
        List<Date> dates = new ArrayList<Date>();
        gregorianCalendar.setTime(startDate);
        dates.add(gregorianCalendar.getTime());
        while (gregorianCalendar.getTime().compareTo(endDate) < 0) {
            // 加1天
            gregorianCalendar.add(Calendar.DAY_OF_MONTH, 1);
            dates.add(gregorianCalendar.getTime());
        }
        return dates;
    }
```

* 获取提前多少个月

```java
  /**
     * 获取提前多少个月
     *
     * @param monty
     * @return
     */
    public static Date getFirstMonth(int monty) {
        Calendar c = Calendar.getInstance();
        c.add(Calendar.MONTH, -monty);
        return c.getTime();
    }
```

* 获取指定时间的前一个小时

```java
  /**
     * @Description: 获取上1个小时
     */
    public static String beforeOneHour(String date) {
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").parse(date));
        calendar.set(Calendar.HOUR_OF_DAY, calendar.get(Calendar.HOUR_OF_DAY) - 1);
        SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        return df.format(calendar.getTime());
    }
```

* 获取指定时间的前一天

```java
    /**
     * @Description: 获取前一天
     */
    public static String beforeOneDay(String date) {
        SimpleDateFormat format = new SimpleDateFormat("yyy-MM-dd HH:mm:ss");
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").parse(date));
        calendar.add(Calendar.DATE, -1);
        return format.format(calendar.getTime());
    }
```

* 获取指定时间的前一分钟

```java
    /**
     * @Description: 获取上1分钟	
     */
    public static String beforeOneHourMINUTE(String date) {
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(new SimpleDateFormat("yyyy-MM-dd HH:mm:ss")(date));
        calendar.set(Calendar.MINUTE, (calendar.get(Calendar.MINUTE) - 1));
        SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        return df.format(calendar.getTime());
    }
```

* 获取指定时间的上个月

```java
    /**
     * @Description: 获取上个月
     */
    public static String getLastMonth(String date) {
        LocalDate localDate = getLocalDate(date);
        localDate = localDate.minusMonths(1);
        DateTimeFormatter formatters = DateTimeFormatter.ofPattern("yyy-MM-dd HH:mm:ss");
        return formatters.format(localDate);
    }
```

* 时间格式转换

```java
    /**
     * @Description  时间格式转换
     * */
    public static LocalDate getLocalDate(String date) {
        LocalDate beginDateTime = LocalDate.parse(date, DateTimeFormatter.ofPattern(DATETIME_DEFAULT_FORMAT));
        return beginDateTime;
    }
```

* 获取指定时间的前一周

```java
    /**
     * @Description: 获取指定时间的前一周
     */
    public static String beforeOneWeek(String date) {
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(new SimpleDateFormat("yyyy-MM-dd HH:mm:ss")(date));
        calendar.add(Calendar.DATE, -7);
        SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        return df.format(calendar.getTime());
    }
```

* java.util.Date 转换为 java.time.LocalDateTime.

```java
    public static LocalDateTime convert(Date date) {
// return date.toInstant().atZone(ZoneId.systemDefault()).toLocalDateTime();
        return LocalDateTime.ofInstant(date.toInstant(), ZoneId.systemDefault());
    }
```

#### java8新时间工具转换类

```java
package com.lhh.utils;

import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.ZoneId;
import java.time.format.DateTimeFormatter;
import java.util.Date;

/**
 * 日期工具类
 */
public class DateUtils {
    private static final DateTimeFormatter localDateFormatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");

    private static final DateTimeFormatter dateFormatter = DateTimeFormatter.ofPattern("yyyy/MM/dd");
    private static final DateTimeFormatter dateNumberFormatter = DateTimeFormatter.ofPattern("yyyyMMdd");

    private static final DateTimeFormatter timeFormatter = DateTimeFormatter.ofPattern("HH:mm:ss");
    private static final DateTimeFormatter timeNumberFormatter = DateTimeFormatter.ofPattern("HHmmss");

    private static final DateTimeFormatter longFormatter = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss");
    private static final DateTimeFormatter longNumberFormatter = DateTimeFormatter.ofPattern("yyyyMMddHHmmss");

    private static final DateTimeFormatter maxFormatter = DateTimeFormatter.ofPattern("yyyyMMddHHmmssSSS");

    private static final DateTimeFormatter itemTimeFormatter = DateTimeFormatter.ofPattern("HH:mm");


    /**
     * 格式化时间.
     *
     * @param str     是字符串
     * @param pattern 模式
     */
    public static Date parseDateTime(String str, String pattern) {
        DateTimeFormatter formatter = DateTimeFormatter.ofPattern(pattern);
        LocalDateTime localDateTime = LocalDateTime.parse(str, formatter);
        return Date.from(localDateTime.atZone(ZoneId.systemDefault()).toInstant());
    }

    public static Date parseBeginDate(String str, String pattern) {
        DateTimeFormatter formatter = DateTimeFormatter.ofPattern(pattern);
        LocalDate localDateTime = LocalDate.parse(str, formatter);
        return Date.from(localDateTime.atStartOfDay().atZone(ZoneId.systemDefault()).toInstant());
    }

    public static Date parseEndDate(String str, String pattern) {
        DateTimeFormatter formatter = DateTimeFormatter.ofPattern(pattern);
        LocalDate localDateTime = LocalDate.parse(str, formatter);
        localDateTime = localDateTime.plusDays(1L);
        return Date.from(localDateTime.atStartOfDay().atZone(ZoneId.systemDefault()).toInstant());
    }

    public static String localDateFormat(Date date) {
        return localDateFormat(convert(date));
    }

    public static String dateFormat(Date date) {
        return dateFormat(convert(date));
    }

    public static String itemItemFormat(Date date) {
        return itemTimeFormat(convert(date));
    }

    public static String localDateFormat(LocalDateTime date) {
        return date.format(localDateFormatter);
    }

    public static String dateFormat(LocalDateTime date) {
        return date.format(dateFormatter);
    }

    public static String itemTimeFormat(LocalDateTime date) {
        return date.format(itemTimeFormatter);
    }

    public static String dateNumberFormat(Date date) {
        return dateNumberFormat(convert(date));
    }

    public static String dateNumberFormat(LocalDateTime date) {
        return date.format(dateNumberFormatter);
    }

    public static String timeFormat(Date date) {
        return timeFormat(convert(date));
    }

    public static String timeFormat(LocalDateTime date) {
        return date.format(timeFormatter);
    }

    public static String timeNumberFormat(Date date) {
        return timeNumberFormat(convert(date));
    }

    public static String timeNumberFormat(LocalDateTime date) {
        return date.format(timeNumberFormatter);
    }

    public static String longFormat(Date date) {
        return longFormat(convert(date));
    }

    public static String longFormat(LocalDateTime date) {
        return date.format(longFormatter);
    }

    public static String longNumberFormat(Date date) {
        return longNumberFormat(convert(date));
    }

    public static String longNumberFormat(LocalDateTime date) {
        return date.format(longNumberFormatter);
    }

    public static String maxFormat(Date date) {
        return maxFormat(convert(date));
    }

    public static String maxFormat(LocalDateTime date) {
        return date.format(maxFormatter);
    }

    /**
     * 将java.util.Date 转换为 java.time.LocalDateTime.
     *
     * @param date 时间
     * @return local时间
     */
    public static LocalDateTime convert(Date date) {
// return date.toInstant().atZone(ZoneId.systemDefault()).toLocalDateTime();
        return LocalDateTime.ofInstant(date.toInstant(), ZoneId.systemDefault());
    }

    public static Date merge(Date date, Date time) {
        return new Date(date.getTime() + time.getTime());
    }

}
```



