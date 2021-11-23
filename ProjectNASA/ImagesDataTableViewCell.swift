//
//  ImagesDataTableViewCell.swift
//  ProjectNASA
//
//  Created by Adonis Rumbwere on 22/11/2021.
//

import UIKit

class ImagesDataTableViewCell: UITableViewCell {
    static let identifer = "ImagesDataTableViewCell"
    
    @IBOutlet weak var nasaImage: UIImageView!
    @IBOutlet weak var titleLbl: UILabel!
    @IBOutlet weak var photographerLbl: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

       
    }
    
    func configure(with ViewModel: ImagesDataTableViewCellViewModel){
        
        titleLbl.text = ViewModel.title
        photographerLbl.text = ViewModel.photographer
    }

}
