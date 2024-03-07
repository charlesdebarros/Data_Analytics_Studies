-- String Functions
-- Reference -> https://dev.mysql.com/doc/refman/8.3/en/string-functions.html

-- LENGTH(str)
SELECT LENGTH('hello world') AS str_length;

-- UPPER()/LOWER()
SELECT UPPER('hello world') AS str_upper;
SELECT LOWER('HELLO WORLD') AS str_lower;

-- Removing unnecessary spaces
-- LTRIM(str)  #Left trim
SELECT LTRIM('   Hello world') AS left_trimmed_str;

-- RTRIM(str)  # right trim
SELECT RTRIM('Hello world    ') AS right_trimmed_str;

-- TRIM(str)  # removes any leading or trailing spaces
SELECT TRIM('   Hello world!   ') AS trimmed_str;

-- Return n characters from the left/right
-- LEFT/RIGHT(str, <num_characters>)
SELECT LEFT('abcdefghij', 3) AS three_chars_from_left;
SELECT RIGHT('abcdefghij', 3) AS three_chars_from_right;

-- Returning n number of characters from anywhere in the string
-- SUBSTRING(str, starting_from, length(optional))
SELECT SUBSTRING('picking-up', 3, 2) AS substring_str;

-- LOCATE(substr, str, pos(optional))
-- find the FIRST occurance of the substr
-- Not case-sensitive
-- If a character cannot be found/doesn't exist in the str, SQL returns 0
SELECT LOCATE('cd', 'abcdefgcd') AS locate_substr;
SELECT LOCATE('CD', 'abcdefgCD') AS locate_substr;
SELECT LOCATE('cd', 'abCDefgcd') AS locate_substr;
SELECT LOCATE('q', 'abcdefgcd') AS locate_substr;

-- Replacing a character or a series of characters
-- REPLACE(str, replacing, replacer)
-- Returns the string str with all occurrences of the string from_str replaced by the string to_str. 
-- REPLACE() performs a case-sensitive match when searching for from_str.
SELECT REPLACE('possessive', 's', '$') as replace_char;
SELECT REPLACE('possessive', 'S', '$') as replace_char;  # case-sensitive

-- Concatenate strings
-- CONCAT(str, str)
-- CONCAT() returns NULL if any argument is NULL.
SELECT CONCAT('un', 'necessary') as concatenated_strs;
SELECT CONCAT('First', NULL, 'Name') AS concat_with_NULL;