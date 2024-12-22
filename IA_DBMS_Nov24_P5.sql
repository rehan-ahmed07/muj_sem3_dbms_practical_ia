-- PL/SQL program to check if the number 12321 is a palindrome
DECLARE
    num NUMBER := 12321; -- The number to check
    reversed_num NUMBER := 0; -- Variable to store the reversed number
    temp_num NUMBER := num; -- Temporary variable to hold the original number
    remainder NUMBER; -- Variable to store the remainder
BEGIN
    -- Loop to reverse the number
    WHILE temp_num > 0 LOOP
        remainder := temp_num MOD 10; -- Get the last digit
        reversed_num := (reversed_num * 10) + remainder; -- Build the reversed number
        temp_num := temp_num / 10; -- Remove the last digit
    END LOOP;

    -- Check if the original number is equal to the reversed number
    IF num = reversed_num THEN
        DBMS_OUTPUT.PUT_LINE(num || ' is a palindrome.');
    ELSE
        DBMS_OUTPUT.PUT_LINE(num || ' is not a palindrome.');
    END IF;
END;
/