# midterm-cn-java
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
