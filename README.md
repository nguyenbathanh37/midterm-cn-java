# midterm-cn-java
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
