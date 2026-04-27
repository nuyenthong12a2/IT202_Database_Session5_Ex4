USE session_5;

-- Tạo bảng Users (Khách hàng)
CREATE TABLE Users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    full_name VARCHAR(255) NOT NULL,
    total_orders INT 
);

-- Thêm dữ liệu mẫu bao gồm cả các trường hợp đặc biệt
INSERT INTO Users (full_name, total_orders) VALUES 
('Nguyễn Văn Kim Cương', 600),   
('Trần Thị Vàng', 250),          
('Lê Văn Bạc', 30),              
('Phạm Người Mới', NULL),        
('Hoàng May Mắn', 100);          

SELECT 
    full_name AS Ten_Khach_Hang,
    CASE 
       
        WHEN total_orders IS NULL THEN 'Bạc'
        
      
        WHEN total_orders > 500 THEN 'Kim Cương'
        WHEN total_orders >= 100 THEN 'Vàng'
        
       
        ELSE 'Bạc'
    END AS Xep_Hang
FROM Users;