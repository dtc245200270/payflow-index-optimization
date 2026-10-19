## Câu hỏi 1: Non-SARGable và Full Table Scan
- **Prompt:** Trong MySQL, nếu tôi tạo Index cho một cột ngày tháng, nhưng trong mệnh đề WHERE lại viết WHERE YEAR(col) = 2026, tại sao MySQL lại từ chối sử dụng Index và phải quét toàn bộ bảng?
- **Tóm tắt:** Bọc hàm quanh cột làm mất trật tự sắp xếp B-Tree khiến hệ thống không thể tìm kiếm nhị phân mà phải tính toán hàm trên từng dòng dữ liệu.

## Câu hỏi 2: Thứ tự cột trong Composite Index
- **Prompt:** Khi thiết kế một Composite Index cho cột (transaction_type, created_at), thứ tự các cột có quan trọng không?
- **Tóm tắt:** Cần ưu tiên cột có điều kiện đẳng thức (=) đứng trước (`transaction_type`), sau đó đến cột lọc khoảng Range (`created_at`) để tối ưu hóa phạm vi lọc.

## Câu hỏi 3: Chỉ số Extra trong EXPLAIN
- **Prompt:** Cột Extra hiện 'Using index condition' khác gì với 'Using index'?
- **Tóm tắt:** 'Using index' là Covering Index lấy dữ liệu ngay trên cây chỉ mục; 'Using index condition' là cơ chế ICP lọc điều kiện trên chỉ mục trước khi đọc dòng dữ liệu bảng.
