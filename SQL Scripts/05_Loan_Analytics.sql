--11.LOAN STATUS
SELECT
STATUS,
COUNT(*) LOANS,
SUM(AMOUNT) TOTAL_AMOUNT
FROM LOAN
GROUP BY STATUS;

--12.RISK LOANS
SELECT LOAN_ID, ACCOUNT_ID, AMOUNT, STATUS
FROM LOAN
WHERE STATUS IN ('B','D');

-- Insight:
-- Highlights loans classified as high risk (Status B and D).
-- Business Recommendation:
-- High-risk loans should be monitored closely to reduce potential financial losses and improve collection strategies.

--13.LOAN PAYMENT ANALYSIS
SELECT ACCOUNT_ID, AMOUNT, PAYMENTS,
ROUND(AMOUNT/PAYMENTS,2)AS MONTHLY_PAYMENT
FROM LOAN;