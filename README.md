# MIDTERM JAVA
# ERD
![image](https://user-images.githubusercontent.com/89689892/230741072-73c7e85a-150d-4677-bcb7-965063a0126f.png)
# Các công nghệ sử dụng
- MySQL: quản lí database
- Thymleaf: định dạng mẫu (template) HTML/XML được sử dụng để xây dựng các ứng dụng web Java.
- Lombok: giảm thiểu lượng mã lặp đi lặp lại bằng cách tạo ra các phương thức getter, setter, constructor tự động từ các annotation được định nghĩa trong lớp Java
- Hibernate: ánh xạ các đối tượng Java thành các bảng trong cơ sở dữ liệu.
- Spring boot web: dễ dàng phát triển web bằng mô hình MVC
- Spring security: quản lý bảo mật trong ứng dụng web Spring.
# Giải thích cấu trúc thư mục
![image](https://user-images.githubusercontent.com/89689892/230726739-175344d4-8af8-460f-93dc-e3d823cd8904.png)
- package api: chứa 2 controller để triển khai API để thực hiện các thao tác CRUD trên dữ liệu của sản phẩm, đơn đặt hàng trong ứng dụng. Ngoài ra còn có file sendData.txt chứa các raw json để test api.
- package configuration: chứa config của spring security
- package controller: chứa các controller để render và thực hiện các thao tác trên trang web chính và admin
- package dto: dùng để chuyển đổi đối tượng có liên kết với Hibernate (Hibernate proxy) và không có Serializer nào được tìm thấy để tạo thành JSON thành một đối tượng đơn giản hơn.
- package global: chứa cart hiện tại gồm một danh sách sản phẩm
- package model: chứa các model
- package mysql: file mysql tạo database trước khi chạy ứng dụng
- package repository: chứa các repository implement từ JpaRepository
- package service: chứa các service 
- file java main để chạy ứng dụng

- package resource:
  + static: chứa các file css, js, image và imageproduct
  + template: chứa các file html thymleaf
# Các bước để chạy ứng dụng:
- B1: Chạy xampp và tạo 1 database dựa trên file sql đã cung cấp ở package mysql
- B2: Chạy file MajorApplication để khởi tạo web
- B3: Mở trình duyệt và truy cập vào http://localhost:8080/
- B4: Đăng nhập bằng tk admin :
  + username: admin@gmail.com
  + password: 123456
  * Hoặc đăng kí tài khoản mới để đăng nhập
  * Ngoài ra còn có thể đăng nhập bằng google
- B5: Hoàn tất
  + Sau khi đã đăng nhập có thể thực hiện các chức năng bình thường ở http://localhost:8080/
  + Trang quản trị: http://localhost:8080/admin (chỉ tk admin mới vào được)
# API
- PRODUCT SESSION
- Get all products
![image](https://user-images.githubusercontent.com/89689892/230730435-37506e99-63b9-4e79-a680-c339aee690f0.png)
- Add a product:
![image](https://user-images.githubusercontent.com/89689892/230730842-d112ae3c-2592-4f46-8aa2-3ce85927fbfb.png)
  + 1 product bánh mì mới đã được thêm
- Update a product:
![image](https://user-images.githubusercontent.com/89689892/230730930-77e88405-ec47-4aac-bd01-fb8a6f3f6c21.png)
  + category của product đã được sửa thành 2
- Delete a product:
![image](https://user-images.githubusercontent.com/89689892/230730966-39dc52ce-139f-49d6-861b-ca51bf6d39fa.png)
  + product có id là 5 đã bị xóa
- ORDER SESSION
- Add a order:
![image](https://user-images.githubusercontent.com/89689892/230731595-391862c2-46d6-49f0-af3d-95c291e6b318.png)
  + một order đã được thêm
- Get all orders
![image](https://user-images.githubusercontent.com/89689892/230731611-4d5c2f47-fdd0-4814-9893-269e4c3a487a.png)
- update a order:
![image](https://user-images.githubusercontent.com/89689892/230731668-ae4ffc25-f82e-4ecc-b8d0-0865b5077d64.png)
  + order này còn 1 product
- delete a order:
![image](https://user-images.githubusercontent.com/89689892/230731712-b42893e6-89f9-429b-bbce-500b47bc966b.png)
  + order id bằng 1 đã bị xóa

