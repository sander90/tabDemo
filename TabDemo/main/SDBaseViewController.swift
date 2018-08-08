//
//  SDBaseViewController.swift
//  EasyCallMyPhone
//
//  Created by sander on 2017/9/18.
//  Copyright © 2017年 shansander. All rights reserved.
//

import UIKit

class SDBaseViewController: UIViewController {
    
    private(set) var showKeyBoardNotification : Bool = false;

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated);
        
        if self.showKeyBoardNotification {
            self.sd_rmKeyboardNotification();
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func sd_registKeyBoardNotification() -> Void
    {
        NotificationCenter.default.addObserver(self, selector: #selector(self.keyboard_willShow(_:)), name: NSNotification.Name.UIKeyboardWillShow, object: nil);
        
        NotificationCenter.default.addObserver(self, selector: #selector(self.keyboard_didShow(_:)), name: NSNotification.Name.UIKeyboardDidShow, object: nil);
        
        NotificationCenter.default.addObserver(self, selector: #selector(self.keyboard_willHide(_:)), name: NSNotification.Name.UIKeyboardWillHide, object: nil);
        
        NotificationCenter.default.addObserver(self, selector: #selector(self.keyboard_didHide(_:)), name: NSNotification.Name.UIKeyboardDidHide, object: nil);
        
        self.showKeyBoardNotification = true;
    }
    func sd_rmKeyboardNotification() -> Void {
        NotificationCenter.default.removeObserver(self, name: NSNotification.Name.UIKeyboardWillShow, object: nil);
        NotificationCenter.default.removeObserver(self, name: NSNotification.Name.UIKeyboardWillHide, object: nil);
        NotificationCenter.default.removeObserver(self, name: NSNotification.Name.UIKeyboardDidShow, object: nil);
        NotificationCenter.default.removeObserver(self, name: NSNotification.Name.UIKeyboardDidHide, object: nil);
    }
    
    
    @objc func keyboard_willShow(_ notification : Notification) -> Void {
        
    }
    @objc func keyboard_didShow(_ notification : Notification) -> Void {
        
    }
    @objc func keyboard_willHide(_ notification : Notification) -> Void {
        
    }
    @objc func keyboard_didHide(_ notification : Notification) -> Void {
        
    }
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
