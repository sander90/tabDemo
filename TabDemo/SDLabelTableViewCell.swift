//
//  SDLabelTableViewCell.swift
//  TabDemo
//
//  Created by sander shan on 2018/8/8.
//  Copyright © 2018年 sander shan. All rights reserved.
//

import UIKit

class SDLabelTableViewCell: SDBaseTableViewCell {
    
    lazy var theTitleLabel: UILabel = { [weak self] in
        let theView : UILabel = UILabel.init();
        self?.contentView.addSubview(theView);
        theView.frame = CGRect.init(x: 0, y: 0, width: 300, height: 30);
        theView.font = UIFont.systemFont(ofSize: 15);
        return theView;
    }()
    
    
    func targetModel() -> SDLabelTableViewCellModel {
        return self.dataModel as! SDLabelTableViewCellModel
    }
    
    
    override func loadCellModel(_ model: SDBaseDataModel) {
        super.loadCellModel(model);
        
        self.theTitleLabel.text = self.targetModel().title;
        
    }

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
