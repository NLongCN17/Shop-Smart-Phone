//
//  ChiTietDienThoaiViewController.swift
//  DienThoaiSmartphone
//
//  Created by Nguyễn Long on 13/02/2022.
//  Copyright © 2022 Nguyễn Long. All rights reserved.
//

import UIKit

class ChiTietDienThoaiViewController: UIViewController {

    var cTDienThoai: DienThoai?
    
    @IBOutlet weak var lTenDienthoai: UILabel!
    
    @IBOutlet weak var lGiaTien: UILabel!
    
    @IBOutlet weak var iAnhDienThoai: UIImageView!
    
    @IBOutlet weak var txtChiTiet: UITextView!
    
    
    @IBAction func btnTroLai(_ sender: Any) {
        navigationController?.popToRootViewController(animated: true)
    }
    
    
    @IBAction func btnMuaDienThoai(_ sender: Any) {
        let kq = DataProvider.dienThoaiBus.addDienThoaiGioHang(dienthoai: self.cTDienThoai)
        if kq {
            let alert = UIAlertController(title: "Thông báo", message: "Bạn vừa thêm sản phẩm vào giỏ hàng", preferredStyle: .alert)
            let alerAction = UIAlertAction(title: "OK", style: .default, handler: nil)
            alert.addAction(alerAction)
            present(alert, animated: true)
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        if let cTDT = cTDienThoai {
            lTenDienthoai.text = cTDT.tenDienThoai
            
            lGiaTien.text = cTDT.giaTien
            
            iAnhDienThoai.image = UIImage(named: cTDT.anhDienThoai)
            
            txtChiTiet.text = cTDT.chiTiet
        }
        
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
