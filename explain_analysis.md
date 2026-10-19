- **Trước khi tối ưu:**
  - `type`: ALL (Full Table Scan).
  - `possible_keys` & `key`: NULL (Không dùng được Index do hàm YEAR, MONTH).
  - `rows`: Quét toàn bộ ~5,000,000 dòng, CPU đạt đỉnh 100% gây khóa bảng và timeout.

- **Sau khi tối ưu:**
  - `type`: range / ref.
  - `possible_keys` & `key`: Sử dụng đúng Composite Index `idx_type_date`.
  - `rows`: Giảm từ 5 triệu dòng xuống chỉ còn lượng bản ghi thực tế phát sinh trong tháng 6/2026.
  - `Extra`: Using index condition, loại bỏ hoàn toàn việc quét toàn bộ bảng.
