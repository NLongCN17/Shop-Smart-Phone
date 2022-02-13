//
//  GioHangDienThoaiViewController.swift
//  DienThoaiSmartphone
//
//  Created by Nguyễn Long on 13/02/2022.
//  Copyright © 2022 Nguyễn Long. All rights reserved.
//

import UIKit

class GioHangDienThoaiViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    

    @IBOutlet weak var tblCartProduct: UITableView!
    
    @IBOutlet weak var lblTongTien: UILabel!
    
    var lstCart: [DienThoai] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupCartTable()
    }
    
    func setupCartTable() {
        lstCart = DataProvider.dienThoaiBus.layDanhSachGiohang()
        
        self.tblCartProduct.dataSource = self
        self.tblCartProduct.delegate = self

        // Do any additional setup after loading the view.
        thanhTien()
    }
    
    func thanhTien() {
        lblTongTien.text = DataProvider.fomartPrice(price: DataProvider.dienThoaiBus.tongTienGioiHang())
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return lstCart.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cartCell = tblCartProduct.dequeueReusableCell(withIdentifier: "cartCell", for: indexPath) as! CartTableViewCell
        
        cartCell.lblTen.text = lstCart[indexPath.row].tenDienThoai
        cartCell.lblSL.text = String(lstCart[indexPath.row].count)
        cartCell.lblGia.text = lstCart[indexPath.row].giaTien
        return cartCell
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
