# Sample-SQL-For-Beginners

In here, I will share what I have learned and understood! 

For the practice, I'm using PostgreSQL!

# I) Date types

PostgreSQL supports several data types that can be used to store date and time values. 
Here is a list of some of the commonly used date and time data types in PostgreSQL:

- timestamp: Stores a date and time value with UTC by default. For example, it can take the value of '2004-10-19 10:23:54' UTC.

- timestamptz: This is the same as timestamp, but with the time zone included. For example, '2004-10-19 10:23:54+03' this value includes the UTC+3.

- date: Stores only the date (YYYY/MM/DD) without the time.

- time: Stores only the time (HH:MM:SS without time zone) without the date.

- interval: Stores a duration of time, such as the difference between two timestamps. For example, x days HH:MM:SS with time zone.

## Creating a table
/**
 Creates a table called events with columns for :
 - an id (which is a serial type and will be automatically assigned a unique value for each row), 
 - a name (which is a text type and cannot be NULL), 
 - a start_time and end_time (both of which are timestamp with time zone data types and cannot be NULL), 
 - and a duration (which is an interval type and cannot be NULL). <br>
**/

``` sql
CREATE TABLE events (
  id serial PRIMARY KEY,
  name text NOT NULL,
  start_time timestamptz NOT NULL,
  end_time timestamptz NOT NULL,
  duration interval NOT NULL
);
```

## Insert one row. In here, I'm in UTC+3

``` sql
INSERT INTO events (name,start_time,end_time,duration)
VALUES ('New Year party', '2023-01-01 00:23:00+03', current_timestamp,current_timestamp-'2023-01-01 00:23:00+03')
```

## The next Select command shows the value of an interval from the difference between 2 timestamps 
``` sql
SELECT duration FROM events
```

![image](https://user-images.githubusercontent.com/16953165/211298861-37a96fc9-48ff-4507-b452-786a4dc10273.png)

## You can get current time with different types
``` sql
SELECT CURRENT_DATE, CURRENT_TIME, CURRENT_TIMESTAMP, LOCALTIME,LOCALTIMESTAMP
```

