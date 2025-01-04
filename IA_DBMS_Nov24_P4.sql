-- PL/SQL program to check if the year 2024 is a leap year
DECLARE
    year NUMBER := 2024;
    is_leap_year BOOLEAN;
BEGIN
    -- Check if the year is a leap year
    IF (year MOD 4 = 0 AND year MOD 100 != 0) OR (year MOD 400 = 0) THEN
        is_leap_year := TRUE;
    ELSE
        is_leap_year := FALSE;
    END IF;

    -- Output the result
    IF is_leap_year THEN
        DBMS_OUTPUT.PUT_LINE(year || ' is a leap year.');
    ELSE
        DBMS_OUTPUT.PUT_LINE(year || ' is not a leap year.');
    END IF;
END;
/