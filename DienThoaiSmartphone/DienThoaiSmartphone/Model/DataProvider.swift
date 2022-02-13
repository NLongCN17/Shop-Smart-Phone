//
//  DataProvider.swift
//  DienThoaiSmartphone
//
//  Created by Nguyễn Long on 11/29/19.
//  Copyright © 2019 Nguyễn Long. All rights reserved.
//

import UIKit

class DataProvider: NSObject {
    private static let _dienThoaiBus : DienThoaiBusiness = DienThoaiBusiness()
    
    public static var dienThoaiBus: DienThoaiBusiness {
        get {
            return _dienThoaiBus
        }
    }
    
    public static func thongBao(parent: UIViewController, noiDung: String) {
        //tao ra hop thoai thong bao
        let alert = UIAlertController(title: "Thong bao", message: noiDung, preferredStyle: .alert)
        let acDongY = UIAlertAction(title: "OK", style: .default, handler: nil)
        //Them nut vao thong bao
        alert.addAction(acDongY)
        //Hien thi thong bao
        parent.present(alert, animated: true, completion: nil)
    }
    
    public static func fomartPrice(price: Int) -> String {
        let fomater = NumberFormatter()
        fomater.groupingSeparator = "."
        fomater.numberStyle = .decimal
        return String(fomater.string(from: NSNumber(value: price)) ?? "0")
    }

}
