-- =========================================
-- 1. Inspect Raw Data
-- =========================================

SELECT * 
FROM dirty_cafe_sales;

DESCRIBE dirty_cafe_sales;

-- =========================================
-- 2. Rename Columns (Standardization)
-- =========================================

ALTER TABLE dirty_cafe_sales
CHANGE `Price Per Unit` Price_Per_Unit DOUBLE,
CHANGE `Total Spent` Total_Spent TEXT,
CHANGE `Payment Method` Payment_Method TEXT,
CHANGE `Transaction Date` Transaction_Date TEXT;

-- =========================================
-- 3. Standardize Missing Values
-- =========================================

UPDATE dirty_cafe_sales
SET 
    Item = NULL,
    Total_Spent = NULL,
    Payment_Method = NULL,
    Location = NULL,
    Transaction_Date = NULL
WHERE 
    Item IN ('UNKNOWN', 'ERROR')
    OR Total_Spent IN ('UNKNOWN', 'ERROR')
    OR Payment_Method IN ('UNKNOWN', 'ERROR')
    OR Location IN ('UNKNOWN', 'ERROR')
    OR Transaction_Date IN ('UNKNOWN', 'ERROR');

-- Convert blank strings to NULL
UPDATE dirty_cafe_sales
SET 
    Item = NULLIF(Item,''),
    Quantity = NULLIF(Quantity,''),
    Price_Per_Unit = NULLIF(Price_Per_Unit,''),
    Total_Spent = NULLIF(Total_Spent,''),
    Payment_Method = NULLIF(Payment_Method,''),
    Location = NULLIF(Location,''),
    Transaction_Date = NULLIF(Transaction_Date,'');

-- =========================================
-- 4. Recalculate Total_Spent
-- =========================================

UPDATE dirty_cafe_sales
SET Total_Spent = Quantity * Price_Per_Unit
WHERE Total_Spent IS NULL;

-- =========================================
-- 5. Create Trigger for Future Inserts
-- =========================================

CREATE TRIGGER total_spent_trigger
BEFORE INSERT ON dirty_cafe_sales
FOR EACH ROW
SET NEW.Total_Spent = NEW.Quantity * NEW.Price_Per_Unit;

-- =========================================
-- 6. Optimize Data Types
-- =========================================

ALTER TABLE dirty_cafe_sales
MODIFY COLUMN Total_Spent DOUBLE,
MODIFY COLUMN Transaction_Date DATE,
MODIFY COLUMN Transaction_ID VARCHAR(50);

-- =========================================
-- 7. Check for Duplicate Transaction_IDs
-- =========================================

SELECT Transaction_ID,
       COUNT(*) AS duplicate_count
FROM dirty_cafe_sales
GROUP BY Transaction_ID
HAVING COUNT(*) > 1;

