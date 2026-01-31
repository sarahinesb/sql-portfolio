-- Schema for Cafe Sales (cleaned data)

CREATE TABLE cafe_sales (
  Transaction_ID VARCHAR(50),
  Item TEXT,
  Quantity INT,
  Price_Per_Unit DOUBLE,
  Total_Spent DOUBLE,
  Payment_Method TEXT,
  Location TEXT,
  Transaction_Date DATE
);

