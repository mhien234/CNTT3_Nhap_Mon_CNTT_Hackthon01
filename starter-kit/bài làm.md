# BÀI LÀM – HACKATHON 01

- **Mã đề:** 18
- **Họ tên:Trần Minh Hiển** 
- **Lớp:CNTT3** 
- **Link repository:https://github.com/mhien234/CNTT3_Nhap_Mon_CNTT_Hackthon01.git** 
- **Hệ điều hành (Windows/macOS):Windows** 

## 4.2. Thao tác máy tính cơ bản bằng CLI

### Các lệnh đã chạy

```shell
1. pwd
2. ls -Force
3. mv 
4. rm
5. cp
6. cd,Get-Content,cd ..
```

### Kết quả liệt kê toàn bộ dự án (Windows: Get-ChildItem -Recurse -Force; macOS: ls -aR)

```text
Directory: D:\starter-kit\noi-that-website


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
d-----        10/28/2026  10:48 AM                backup
d-----        10/28/2026  10:50 AM                data
d-----        10/28/2026  10:53 AM                docs
d-----        10/28/2026  10:50 AM                logs
d-----        10/28/2026  10:54 AM                media
------        10/27/2026   1:32 AM             68 .env
-a----        10/27/2026   1:32 AM           2226 bai_lam.md


    Directory: D:\starter-kit\noi-that-website\data


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a----        10/27/2026   1:32 AM           6121 don_noi_that_quy_1.xlsx


    Directory: D:\starter-kit\noi-that-website\docs


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a----        10/27/2026   1:32 AM             53 kich_thuoc.txt


    Directory: D:\starter-kit\noi-that-website\logs


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a----        10/27/2026   1:32 AM           1028 furniture.log


    Directory: D:\starter-kit\noi-that-website\media


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a----        10/27/2026   1:32 AM           4403 logo_noi_that.PNG

```

## 4.3. Lọc log thủ công

### Lệnh đã chạy

```shell
Get-Content .\logs\furniture.log | Select-String "ERROR"
Get-Content .\logs\furniture.log | Select-String "ERROR" > .\logs\daily_report.txt
Get-Content -TotalCount 2.\logs\daily_report.txt
```

### 2 dòng lỗi đầu tiên trong daily_report.txt

```text
2026-01-28 07:35:33 [ERROR] Dat coc bi tu choi
2026-01-28 07:47:33 [ERROR] Dat coc bi tu choi
```

## 4.4. Thao tác với tài liệu Markdown (README.md)

> README.md được chấm trực tiếp trên file `README.md` ở gốc dự án. Đánh dấu `[x]` vào các mục đã làm để tự kiểm tra.

- [X] Heading 1: tên dự án
- [X] Mô tả ngắn có cả **in đậm** và *in nghiêng*
- [X] Bảng `Thư mục | Nội dung`, ít nhất 3 dòng dữ liệu
- [X] Code block chứa lệnh PowerShell/Terminal liệt kê nội dung dự án
- [x] Task list ít nhất 2 công việc, có ít nhất 1 mục đã hoàn thành
- [x] Blockquote nhắc không upload `.env`

## 4.5. Chạy script auto_report (.ps1 hoặc .sh)

### Lệnh chạy (Windows: nếu dùng Phụ lục 2 thì ghi cả 2 lệnh)

```shell
.\auto_report.ps1
```

### Kết quả hiển thị

```text
Dang loc log...
HOAN THANH
```

## 4.6. Đếm số dòng lỗi

### Lệnh

```shell
(Get-Content .\logs\furniture.log | Select-String "ERROR").Count
```

### Kết quả đếm (Windows: giá trị Count; macOS: con số in ra)

```text
7
```

## 4.7. Báo cáo tổng hợp

### Các lệnh đã chạy

```shell
 "===TONG HOP LOG==" > .\logs\tong_hop.txt
 Get-Content .\logs\furniture.log | Select-String "WARNING" >> .\logs\tong_hop.txt
 Get-Content .\logs\furniture.log | Select-String "ERROR" >> .\logs\tong_hop.txt

```

### Nội dung file logs/tong_hop.txt

```text
===TONG HOP LOG==

2026-01-28 07:35:33 [ERROR] Dat coc bi tu choi
2026-01-28 07:47:33 [ERROR] Dat coc bi tu choi
2026-01-28 07:55:33 [ERROR] Khong tim thay trang /mau-moi (404)
2026-01-28 07:59:33 [ERROR] Dat coc bi tu choi
2026-01-28 08:07:33 [ERROR] Khong tim thay trang /mau-moi (404)
2026-01-28 08:19:33 [ERROR] Khong tim thay trang /mau-moi (404)
2026-01-28 08:23:33 [ERROR] Ket noi kho hang that bai



2026-01-28 08:03:33 [WARNING] Thoi gian phan hoi cham
2026-01-28 08:11:33 [WARNING] Mau sofa don sap het
2026-01-28 08:15:33 [WARNING] Mau sofa don sap het
2026-01-28 08:35:33 [WARNING] Mau sofa don sap het



```

## 4.8. Excel

> Phần Excel được chấm trực tiếp trên file `data/don_noi_that_quy_1.xlsx`, không cần ghi vào đây.

