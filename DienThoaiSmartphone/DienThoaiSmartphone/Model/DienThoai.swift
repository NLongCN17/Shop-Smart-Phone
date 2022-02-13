//
//  DienThoai.swift
//  DienThoaiSmartphone
//
//  Created by Nguyễn Long on 11/29/19.
//  Copyright © 2019 Nguyễn Long. All rights reserved.
//
import Foundation
import UIKit

public class DienThoai: NSObject {

    var id: Int = 0;
    var tenDienThoai: String = ""
    var giaTien: String = ""
    var anhDienThoai: String = ""
    var chiTiet: String = ""
    var count: Int = 1
    
    init(tenDienThoai: String, giaTien: String, anhDienThoai: String, chiTiet: String, count: Int) {
        self.tenDienThoai = tenDienThoai
        self.giaTien = giaTien
        self.anhDienThoai = anhDienThoai
        self.chiTiet = chiTiet
        self.count = count
    }
}
