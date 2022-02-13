//
//  ViewController.swift
//  DienThoaiSmartphone
//
//  Created by Nguyễn Long on 11/29/19.
//  Copyright © 2019 Nguyễn Long. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, UISearchBarDelegate {
    
    var lstDienThoai: [DienThoai] = []
    
    @IBOutlet weak var myTableDienThoai: UITableView!
    
    
    @IBOutlet weak var searchDienThoai: UISearchBar!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        if lstDienThoai.count == 0 {
            lstDienThoai = DataProvider.dienThoaiBus.layDanhSach()
        }
        myTableDienThoai.dataSource = self
        myTableDienThoai.delegate = self
        
        searchDienThoai.delegate = self
        searchDienThoai.placeholder = "Nhap ten dien thoai"
    }
    
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        if let tuKhoa = searchDienThoai.text {
            timKiemThongTin(tuKhoa)
        }
            
    }

    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        timKiemThongTin(searchText)
    }
    
    func searchBarTextDidBeginEditing(_ searchBar: UISearchBar) {
        searchDienThoai.showsCancelButton = true
        }
    func searchBarCancelButtonClicked(_ searchBar: UISearchBar) {
        searchDienThoai.text = nil
        searchDienThoai.showsCancelButton = false
        searchDienThoai.endEditing(true)
        lstDienThoai = DataProvider.dienThoaiBus.layDanhSach()
        myTableDienThoai.reloadData()
        
    }
    
    func timKiemThongTin(_ searchText: String) {
        if searchText.count > 0 {
            lstDienThoai = DataProvider.dienThoaiBus.layDanhSach()
            lstDienThoai = lstDienThoai.filter{
                $0.tenDienThoai.contains(searchText)
            }
        } else {
            lstDienThoai = DataProvider.dienThoaiBus.layDanhSach()
        }
        myTableDienThoai.reloadData()
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        lstDienThoai = DataProvider.dienThoaiBus.layDanhSach()
        myTableDienThoai.reloadData()
    }
    

    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return lstDienThoai.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 180
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let dienThoaiCell = tableView.dequeueReusableCell(withIdentifier: "myDTCell", for: indexPath) as! DienThoaiTableViewCell
        
        let objDienThoai = lstDienThoai[indexPath.row]
        
        dienThoaiCell.setDienThoai(dienthoai: objDienThoai)
        
        dienThoaiCell.delegate = self
        
        return dienThoaiCell
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let dienThoaiC: DienThoai = lstDienThoai[indexPath.row]
        
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        
        let ChiTietDienThoaiViewController = storyBoard.instantiateViewController(withIdentifier: "detail") as! ChiTietDienThoaiViewController
        ChiTietDienThoaiViewController.cTDienThoai = dienThoaiC
        
        navigationController?.pushViewController(ChiTietDienThoaiViewController, animated: true)
        
    }
    
}

   
extension ViewController: DienThoaiCellDelegate {
        func didTapAddButton(dienthoai: DienThoai) {
            let kq = DataProvider.dienThoaiBus.addDienThoaiGioHang(dienthoai: dienthoai)
            if kq {
                let alert = UIAlertController(title: "Thông báo", message: "Bạn vừa thêm sản phẩm vào giỏ hàng", preferredStyle: .alert)
                let alerAction = UIAlertAction(title: "OK", style: .default, handler: nil)
                alert.addAction(alerAction)
                present(alert, animated: true)
            }
        }
    }
    
    

