//
//  ViewController.swift
//  TabDemo
//
//  Created by sander shan on 2018/8/8.
//  Copyright © 2018年 sander shan. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
    
    lazy var theTableView: SDBaseTableView = { [weak self] in
        let theView = SDBaseTableView.init()
        self?.view.addSubview(theView);
        theView.frame = (self?.view.bounds)!;
        return theView;
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        sdConfigData()
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func sdConfigData() -> Void {
        let model1 = SDBaseDataModel.init();
        self.theTableView.addCellModel(model1);
        
        let model2 = SDLabelTableViewCellModel.init();
        model2.title = "测试1";
        self.theTableView.addCellModel(model2)
    }


}

