//
//  SDLabelTableViewCellModel.swift
//  TabDemo
//
//  Created by sander shan on 2018/8/8.
//  Copyright © 2018年 sander shan. All rights reserved.
//

import UIKit

class SDLabelTableViewCellModel: SDBaseDataModel {
    
    var title : String?
    
    override func getCellIdentifier() -> String {
        return "SDLabelTableViewCell";
    }
    
    override func cellClass() -> AnyClass {
        return SDLabelTableViewCell.self;
    }

    

}
