//
//  SDBaseCollectionViewCell.swift
//  EasyCallMyPhone
//
//  Created by sander shan on 2018/6/11.
//  Copyright © 2018年 shansander. All rights reserved.
//

import UIKit

class SDBaseCollectionViewCell: UICollectionViewCell {
    
    var baseModel : SDBaseCollectionDataModel?
    
    func loadCollectionModel(model : SDBaseCollectionDataModel) -> Void {
        self.baseModel = model;
    }
    class func reuseIdentifier() -> String {
        
        let class_type_string = type(of: self);
        
        return "\(class_type_string)";
    }
}
