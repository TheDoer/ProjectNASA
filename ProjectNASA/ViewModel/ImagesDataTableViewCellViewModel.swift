//
//  ImagesDataTableViewCellModel.swift
//  ProjectNASA
//
//  Created by Adonis Rumbwere on 22/11/2021.
//

import Foundation
import UIKit


struct ImagesDataTableViewCellViewModel {
    let title: String
    let photographer: String
    let dateCreated: Date
    
    init(
        title:String,
        photographer:String,
        dateCreated:Date
    
    ){
        self.title = title
        self.photographer = photographer
        self.dateCreated = dateCreated
    }
    
}


