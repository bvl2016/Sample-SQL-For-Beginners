--    DATE TYPES 
/**
 creates a table called events with columns for an id (which is a serial type and will be automatically assigned a unique value for each row), 
 a name (which is a text type and cannot be NULL), 
 a start_time and end_time (both of which are timestamp with time zone data types and cannot be NULL), 
 and a duration (which is an interval type and cannot be NULL).
**/
CREATE TABLE events (
  id serial PRIMARY KEY,
  name text NOT NULL,
  start_time timestamptz NOT NULL,
  end_time timestamptz NOT NULL,
  duration interval NOT NULL
);

--Insert one row. In here, I'm in UTC+3
INSERT INTO events (name,start_time,end_time,duration)
VALUES ('New Year party', '2023-01-01 00:23:00+03', current_timestamp,current_timestamp-'2023-01-01 00:23:00+03')

--The Select command shows the value of an interval from the difference between 2 timestamps 
SELECT duration FROM events

-- You can get current time with different types
SELECT CURRENT_DATE, CURRENT_TIME, CURRENT_TIMESTAMP, LOCALTIME,LOCALTIMESTAMP