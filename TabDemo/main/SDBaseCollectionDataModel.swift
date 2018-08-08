//
//  SDBaseCollectionDataModel.swift
//  EasyCallMyPhone
//
//  Created by sander shan on 2018/6/11.
//  Copyright © 2018年 shansander. All rights reserved.
//

import UIKit

class SDBaseCollectionDataModel: NSObject {
    
    var cell_size : CGSize? = nil
    
    func getReuseIdentifier() -> String {
        return SDBaseCollectionViewCell.reuseIdentifier();
    }
    
    func cellClass() -> AnyClass {
        return SDBaseCollectionViewCell.self;
    }

}
