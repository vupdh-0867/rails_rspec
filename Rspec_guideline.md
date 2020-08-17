(QuangVV)
# 1.Intro
Nắm được tầm quan trọng của Unit test
Nắm được phương pháp và kỹ thuật phân tích khi viết Unit Test
Mindset code như thế nào để viết unit test cho hiệu quả
Nên viết test cho những phần nào

(VuPDH)
# 2.Rspec
## 2.1 Basic Structure (Describe, It, Before, After, Let, Subject, Context)
Giới thiệu các keyword cơ bản của rspec như Describe, It, Before, After, Let, Subject
## 2.2 Nested Groups using Context
Sử dụng Describe, context, it để nhóm các test theo ngữ cảnh
## 2.3 Shared Examples and Contexts
Giới thiệu về các shared example trong rspec
## 2.4 Matchers (Build-in matcher, External matcher)
Các loại matcher có sẵn trong rspec, các loại matcher của các thư viện khác như shoulda matcher (gem shoulda matcher)
## 2.5 style guild rspec

(VuPDH)
# 3.Practice theo hướng tdd, c1, c2, c3
Đưa ra một bài toán để thực hành
Liệt kê hết tất cả các trường hợp để test
- normal case
- abnormal case

(QuangVV)
# 4.Cải thiện performance khi viết Rspec
# 4.1.Mock and stub Rspec
## 4.1.1 Give the problem
Mocking có thể giải quyết các vấn đề gì? đưa ví dụ
## 4.1.2 Double
mock là gì, giới thiệu về các method double (double, double_instance, ...)
## 4.1.3 Method Stub
stub là gì, giới thiệu về các method để thực hiện stub (allow, to_receive, and_return)
## 4.1.4 Message Expectations
Giới thiệu về phương pháp Message Expectations.
# 4.1.Sử dụng let và let! hợp lý

Mục tiêu:
1. Biết cách viết rspec: mock stub. khi nào cần mock khi nào cần stub
2. Các tip để nó chạy nhanh hơn. như kiểu build_stubbed
3. viết rspec như thế nào là đủ. viết test trước viết code.
