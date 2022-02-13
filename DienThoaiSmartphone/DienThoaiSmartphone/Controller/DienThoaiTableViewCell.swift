//
//  DienThoaiTableViewCell.swift
//  DienThoaiSmartphone
//
//  Created by Nguyễn Long on 11/29/19.
//  Copyright © 2019 Nguyễn Long. All rights reserved.
//

import UIKit

protocol DienThoaiCellDelegate{
    func didTapAddButton(dienthoai: DienThoai)
}

class DienThoaiTableViewCell: UITableViewCell {
    
    var dienThoaiMua: DienThoai!

    var delegate: DienThoaiCellDelegate?
    
    @IBOutlet weak var imgAnhDienThoai: UIImageView!
    
    @IBOutlet weak var lblTenDienThoai: UILabel!
    
    @IBOutlet weak var lblGiaTien: UILabel!
    
    
    @IBAction func btnAddDTGH(_ sender: Any) {
        delegate?.didTapAddButton(dienthoai: dienThoaiMua)
    }
    


    func setDienThoai(dienthoai: DienThoai) {
        dienThoaiMua = dienthoai
        imgAnhDienThoai.image = UIImage(named: dienthoai.anhDienThoai)
        lblTenDienThoai.text = dienthoai.tenDienThoai
        lblGiaTien.text = dienthoai.giaTien
    }
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        
        
        // Configure the view for the selected state
    }
    
    

}
