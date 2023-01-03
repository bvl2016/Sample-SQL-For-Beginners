# Sample-SQL-For-Beginners

In here, I will share what I have learned and understood! 

For the practice, I'm using PostgreSQL!

# Data types

PostgreSQL supports several data types that can be used to store date and time values. 
Here is a list of some of the commonly used date and time data types in PostgreSQL:

- timestamp: Stores a date and time value with UTC by default. For example, it can take the value of '2004-10-19 10:23:54' UTC.

- timestamptz: This is the same as timestamp, but with the time zone included. For example, '2004-10-19 10:23:54+03' this value includes the UTC+3.

- date: Stores only the date (YYYY/MM/DD) without the time.

- time: Stores only the time (HH:MM:SS without time zone) without the date.

- interval: Stores a duration of time, such as the difference between two timestamps. For example, x days HH:MM:SS with time zone.
