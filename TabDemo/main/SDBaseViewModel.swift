//
//  SDBaseViewModel.swift
//  EasyCallMyPhone
//
//  Created by sander on 2017/10/18.
//  Copyright © 2017年 shansander. All rights reserved.
//

import UIKit

class SDBaseViewModel: NSObject {
    
    public var viewController : UIViewController?
    
    public class func viewModel(viewcontroller : UIViewController)-> SDBaseViewModel {
        let viewModel : SDBaseViewModel = SDBaseViewModel(viewcontroller)
        return viewModel;
    }
    
    
    override init() {
        super.init();
    }
    
    init(_ viewController:UIViewController) {
        super.init();
        self.viewController = viewController;
        
    }

}
