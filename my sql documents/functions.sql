use Arun

Types of SQL Functions
SQL functions can be categorised into two types:

Aggregate Functions: These functions are used to perform calculations on multiple rows of data, 
returning a single output value. They are commonly used for statistical analysis or to summarise data.

 Examples of aggregate functions in SQL include COUNT, SUM, AVG, MIN, and MAX.

Scalar Functions: These functions operate on a single value and return a single value. 
Scalar functions can be further divided into categories based on their purpose, such as string functions,
 numeric functions, and date and time functions. 

 Examples of scalar functions include UPPER, LOWER, ROUND, and NOW.

Common SQL Functions List
Here is a list of commonly used SQL functions, grouped by category:

Aggregate Functions:

COUNT(): Returns the count of rows in a table or group.
SUM(): Calculates the sum of values in a column.
AVG(): Computes the average value for a specified column.
MAX(): Retrieves the maximum value in a column.
MIN(): Finds the minimum value in a column.
String Functions:

UPPER(): Converts a string to uppercase.
LOWER(): Transforms a string to lowercase.
LEFT(): Extracts characters from the left of a string.
RIGHT(): Extracts characters from the right of a string.
LENGTH(): Determines the length of a string.

Numeric Functions:

ABS(): Returns the absolute value of a number.
ROUND(): Rounds a number to the nearest integer or specified number of decimal places.
CEILING(): Returns the smallest integer greater than or equal to a number.
FLOOR(): Finds the largest integer less than or equal to a number.

Date and Time Functions:

NOW(): Displays the current date and time.
DATE(): Extracts the date portion of a date or datetime value.
TIME(): Retrieves the time portion of a date or datetime value.
DATEDIFF(): Calculates the difference between two date values.


    SELECT sales_employee, revenue,
           ROW_NUMBER() OVER (ORDER BY revenue DESC) AS revenue_rank
    FROM sales_data


