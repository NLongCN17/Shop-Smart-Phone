//
//  DienThoaiBusiness.swift
//  DienThoaiSmartphone
//
//  Created by Nguyễn Long on 11/29/19.
//  Copyright © 2019 Nguyễn Long. All rights reserved.
//

import UIKit

class DienThoaiBusiness: NSObject {

    private var lstDienThoai: [DienThoai] = []
    private var lstGioHang: [DienThoai] = []
    
    
    func taoDuLieuBanDau() -> Void {
        let samsungGalaxyS21FE5G = DienThoai(tenDienThoai: "Samsung Galaxy S21 FE 5G (8GB/128GB)", giaTien: "16.990.000", anhDienThoai: "Samsung-Galaxy-S21-FE", chiTiet: "Samsung Galaxy S21 FE 5G xuất hiện với 1 ngoại hình tinh tế, cụm camera thông minh hoạt động đầy ấn tượng và cấu hình mạnh mẽ từ chip Exynos 2100 nhà Samsung, chắc chắn sẽ thu phục cảm tình của bạn trên từng trải nghiệm.Thiết kế cao cấp, tinh tế và thời trang. Samsung Galaxy S21 FE 5G sở hữu khung viền nhôm bóng bẩy, mặt lưng bằng nhựa có độ nhám nhẹ chống bám vân tay và chống trượt tốt, các cạnh viền hoàn thiện bo cong nhẹ tạo nét mềm mại và tinh tế cho tổng thể thiết kế, đồng thời tạo cảm giác cầm nắm chắc tay.Máy mỏng 7.9 mm và nhẹ chỉ 177 g, dễ dàng sử dụng bằng 1 tay kể cả với các bạn nữ với lòng bàn tay nhỏ, cho thao tác sử dụng thuận tiện, linh hoạt, cũng tiện bảo quản và mang theo.", count: 1)
        samsungGalaxyS21FE5G.id = 1
        
        lstDienThoai.append(samsungGalaxyS21FE5G)
        
        
        let vivoV23e = DienThoai(tenDienThoai: "Vivo-V23e", giaTien: "8.490.000", anhDienThoai: "Vivo-V23e", chiTiet: "Vivo V23e - sản phẩm tầm trung được đầu tư lớn về khả năng selfie cùng ngoại hình mỏng nhẹ, bên cạnh thiết kế vuông vức theo xu hướng hiện tại thì V23e còn có hiệu năng tốt và một viên pin có khả năng sạc cực nhanh. Thiết kế mỏng nhẹ cùng màu sắc tinh tế. Vivo V23e vẫn giữ đặc điểm nổi bật của Vivo V Series với thiết kế mỏng 7.36 mm ấn tượng (ở phiên bản màu đen). Viền màn hình 2 cạnh bên có độ mỏng ở mức vừa phải, tuy nhiên thì phần cạnh dưới thì có dày hơn một chút.", count: 1)
        vivoV23e.id = 2
        
        lstDienThoai.append(vivoV23e)
        
        
        let xiaomi11T5G256GB = DienThoai(tenDienThoai: "Xiaomi 11T 5G 256GB", giaTien: "11.990.000", anhDienThoai: "xiaomi-11t-256gb", chiTiet: "Xiaomi 11T 5G sở hữu màn hình AMOLED, viên pin siêu khủng cùng camera độ phân giải 108 MP, chiếc smartphone này của Xiaomi sẽ đáp ứng mọi nhu cầu sử dụng của bạn, từ giải trí đến làm việc đều vô cùng mượt mà.Cho ra những tác phẩm đầy chân thật với camera 108 MP. Xiaomi đã trang bị cho máy cụm 3 camera sau gồm camera chính 108 MP, camera góc rộng có độ phân giải 8 MP cùng camera telemacro 5 MP kết hợp cùng phần cứng bên trong cho khả năng lấy nét, thu sáng và zoom cực tốt để cho ra những bức ảnh chi tiết dù bạn chụp gần hay chụp xa. ", count: 1)
        xiaomi11T5G256GB.id = 3
        
        lstDienThoai.append(xiaomi11T5G256GB)
        
        
        let vivoy15A = DienThoai(tenDienThoai: "Vivo Y15a", giaTien: "3.990.000", anhDienThoai: "Vivo-y15A", chiTiet: "Vivo Y15a - là sản phẩm thuộc phân khúc giá rẻ có hiệu suất ổn định trên con chip 8 nhân, sở hữu một thiết kế hiện đại giúp cho máy thực sự là một sự lựa chọn đáng quan tâm trước khi chọn mua cho mình một thiết bị sở hữu đầy đủ chức năng có giá thành hợp lý.Thiết kế hiện đại. Máy có thiết kế được bo cong ở các cạnh viền mặt lưng giúp người dùng cầm nắm một cách thoải mái trong một khoảng thời gian lâu dài. Với kích thước được tối ưu khá tốt khi máy có độ mỏng 8.28 mm, mang đến một thiết kế bắt kịp xu hướng thiết kế gọn gàng hiện nay, đem lại cái nhìn sang trọng và đẳng cấp đến với bạn.", count: 1)
        vivoy15A.id = 4
        
        lstDienThoai.append(vivoy15A)
        
        
        let oppoReno4pro = DienThoai(tenDienThoai: "OPPO Reno4 Pro ", giaTien: "10.490.000", anhDienThoai: "oppo-reno4-pro", chiTiet: "OPPO chính thức trình làng chiếc smartphone có tên OPPO Reno4 Pro. Máy trang bị cấu hình vô cùng cao cấp với vi xử lý chip Snapdragon 720G, bộ 4 camera đến 48 MP ấn tượng, cùng công nghệ sạc siêu nhanh 65 W nhưng được bán với mức giá vô ưu đãi, dễ tiếp cận.Thiết kế tràn viền siêu ấn tượng. OPPO Reno4 Pro được trang bị màn hình siêu tràn viền kích thước lớn 6.5 inch, tỉ lệ hiển thị lên tới 93.4%, mật độ điểm ảnh đạt ngưỡng 402 ppi, đạt 100% dải màu DCI-P3 điều này cho phép hình ảnh hiển thị chi tiết, sắc nét và sống động nhất.", count: 1)
        oppoReno4pro.id = 5
        
        lstDienThoai.append(oppoReno4pro)
        
        
        let realme8pro = DienThoai(tenDienThoai: "Samsung Galaxy J7 Prime", giaTien: "7.990.000", anhDienThoai: "realme-8-pro", chiTiet: "Không dừng lại ở Realme 8 và Realme 8 Pro, Realme tiếp tục gây ấn tượng khi ra mắt Realme 8 5G. Mẫu điện thoại sở hữu cấu hình phần cứng mới và hỗ trợ kết nối 5G hiện đại mang đến cho bạn những trải nghiệm tuyệt vời với tốc độ mạng cực nhanh dù ở bất cứ đâu.Phong cách thiết kế tối giản. Không giống như 2 người anh trong cùng series là Realme 8 và 8 Pro, thiết kế của Realme 8 5G lại có phần đơn giản hơn, dòng chữ biểu tượng Dare to Leap đã được loại bỏ để lại mặt lưng trơn nhẵn với hiệu ứng chuyển sáng bắt mắt và thời trang.", count: 1)
        realme8pro.id = 6
        
        lstDienThoai.append(realme8pro)
        
        
        let oppoA95 = DienThoai(tenDienThoai: "OPPO A95 ", giaTien: "6.990.000", anhDienThoai: "oppo-a95", chiTiet: "Bên cạnh phiên bản 5G, OPPO còn bổ sung phiên bản OPPO A95 4G với giá thành phải chăng tập trung vào thiết kế năng động, sạc nhanh và hiệu năng đa nhiệm ấn tượng sẽ giúp cho cuộc sống của bạn thêm phần hấp dẫn, ngập tràn niềm vui. Thiết kế hiện đại, mỏng nhẹ thời trang. OPPO A95 có thiết kế trẻ trung hiện đại với công nghệ phủ màu độc quyền OPPO. Nó mềm mại mượt mà, chống mài mòn và chống bám vân tay một cách hiệu quả.", count: 1)
        oppoA95.id = 7
        
        lstDienThoai.append(oppoA95)
        
        
        let iphone12mini = DienThoai(tenDienThoai: "iPhone 12 mini 64GB", giaTien: "17.490.000", anhDienThoai: "iphone-12-mini", chiTiet: "iPhone 12 mini 64 GB tuy là phiên bản thấp nhất trong bộ 4 iPhone 12 series, nhưng vẫn sở hữu những ưu điểm vượt trội về kích thước nhỏ gọn, tiện lợi, hiệu năng đỉnh cao, tính năng sạc nhanh cùng bộ camera chất lượng cao. Thiết kế sang trọng, cao cấp. Điểm nhấn đầu tiên phải kể đến ở dòng máy này chính là viền máy không còn được thiết kế bo cong các cạnh, mà thay vào đó là phần cạnh máy được vát phẳng vô cùng mạnh mẽ và cá tính.", count: 1)
        iphone12mini.id = 8
        
        lstDienThoai.append(iphone12mini)
        
        
        let iphonese = DienThoai(tenDienThoai: "iPhone SE 256GB (2020)", giaTien: "15.990.000", anhDienThoai: "iphone-se", chiTiet: "iPhone SE 256GB 2020 cuối cùng đã được Apple ra mắt, với ngoại hình nhỏ gọn được sao chép từ iPhone 8 nhưng mang trong mình một hiệu năng mạnh mẽ với vi xử lý A13 Bionic, mức giá hấp dẫn hứa hẹn sẽ là yếu tố “hút khách” của smartphone đình đám đến từ nhà Táo khuyết. Gọn nhẹ chắc chắn thoải mái sử dụng. iPhone SE 2020 có thiết kế khá nhỏ bé khi đặt cạnh các smartphone màn hình khủng hiện nay, nhưng với những ai không thích kiểu thiết kế tràn viền và màn hình lớn, thì đây sẽ là lựa chọn tốt nhất cho họ. Với màn hình 4.7 inch, viền màn hình khá dày, cùng cảm biến vân tay Touch ID, các cạnh bo cong hoàn hảo, iPhone SE 2020 mang lại cảm giác cầm nắm quen thuộc, kích thước nhỏ gọn để bạn sử dụng 1 tay một cách dễ dàng. Chiếc điện thoại mới nhà Táo trang bị màn hình Retina 4.7 inch, tuy chỉ có độ phân giải HD nhưng vẫn cho chất lượng hiển thị tốt với công nghệ True Tone tự cân chỉnh màu theo môi trường xung quanh.", count: 1)
        iphonese.id = 9
        
        lstDienThoai.append(iphonese)
        
    }
    
    public func layDanhSach() -> [DienThoai] {
        if lstDienThoai.count == 0 {
            taoDuLieuBanDau()
        }
        return lstDienThoai
    }
    
    public func layDanhSachGiohang() -> [DienThoai] {
        return lstGioHang
    }
    
    public func addDienThoaiGioHang(dienthoai: DienThoai?) -> Bool {
        if dienthoai != nil && lstGioHang.count != 0 {
            for i in 0...(lstGioHang.count - 1) {
                if dienthoai?.id == lstGioHang[i].id {
                    lstGioHang[i].count = lstGioHang[i].count + 1
                    break
                } else {
                    if i == lstGioHang.count - 1 {
                        lstGioHang.append(dienthoai!)
                    }
                    continue
                }
            }
            return true
        } else if dienthoai != nil && lstGioHang.count == 0 {
            lstGioHang.append(dienthoai!)
            return true
        }
        return false
    }
    
    public func tongTienDienThoai(number: Int, price: String) -> Int {
        let tongTien = Int(price.replacingOccurrences(of: ".", with: "")) ?? 0
        return tongTien * number
    }
    
    public func tongTienGioiHang() -> Int {
        var tongTienGH = 0
        if lstGioHang.count == 0 {
            return tongTienGH
        } else {
            for i in 0...(lstGioHang.count - 1) {
                tongTienGH = tongTienGH + tongTienDienThoai(number: lstGioHang[i].count, price: lstGioHang[i].giaTien)
            }
            return tongTienGH
        }
    }
    
}
