//
//  SDBaseTableViewCell.swift
//  EasyCallMyPhone
//
//  Created by sander on 2017/10/18.
//  Copyright © 2017年 shansander. All rights reserved.
//

import UIKit

class SDBaseTableViewCell: UITableViewCell {

    
    public var dataModel : SDBaseDataModel?
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    //MARK: 获取 Cell
    public class func get_cellIdentifier() ->String {
        return NSStringFromClass(self.classForCoder());
    }
    
    func loadCellModel(_ model: SDBaseDataModel) -> Void {
        self.dataModel = model;
        
    }
    
    

}
