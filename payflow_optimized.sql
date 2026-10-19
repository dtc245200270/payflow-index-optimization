-- HỆ THỐNG PAYFLOW - GIẢI PHÁP TỐI ƯU HÓA TRUY VẤN
USE payflow_db;

-- 1. Tạo Composite Index tối ưu
CREATE INDEX idx_type_date ON Transactions(transaction_type, created_at);

-- 2. Truy vấn đã Refactor chuẩn SARGable kèm EXPLAIN
EXPLAIN
SELECT SUM(amount) AS total_deposit
FROM Transactions
WHERE transaction_type = 'DEPOSIT'
  AND created_at >= '2026-06-01 00:00:00'
  AND created_at < '2026-07-01 00:00:00';
