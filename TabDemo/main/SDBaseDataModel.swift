//
//  SDBaseDataModel.swift
//  EasyCallMyPhone
//
//  Created by sander on 2017/10/18.
//  Copyright © 2017年 shansander. All rights reserved.
//

import UIKit

class SDBaseDataModel: NSObject {
    
    
    /// cell的高度
    var height_cell : CGFloat = 50;
    
    func getCellIdentifier() -> String {

        return "SDBaseTableViewCell";
    }
    
    func cellClass() -> AnyClass {
        return SDBaseTableViewCell.self;
    }
    
    
    
    
}
