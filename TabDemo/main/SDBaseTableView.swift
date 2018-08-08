//
//  SDBaseTableView.swift
//  EasyCallMyPhone
//
//  Created by sander shan on 2018/6/11.
//  Copyright © 2018年 shansander. All rights reserved.
//

import UIKit

class SDBaseTableView: UITableView {
    
    var tList = [SDBaseDataModel]();
    var identifierMap = [String]();

    
    /// tableView dataSource
    public var tDataSource : UITableViewDataSource? {
        didSet{
            self.dataSource = tDataSource;
        }
    }
    
    /// tableView delegate
    public var tDelegate : UITableViewDelegate? {
        didSet{
            self.delegate = tDelegate;
        }
    }
    
    init() {
        super.init(frame: CGRect.init(), style: UITableViewStyle.plain);
        self.dataSource = self;
        self.delegate = self;
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func addCellModel(_ model : SDBaseDataModel) -> Void {
        self.tList.append(model);
        registerCell(model);
    }
    func addCellModels(_ models : [SDBaseDataModel]) -> Void {
        self.tList.append(contentsOf: models);
        for model in models {
            registerCell(model);
        }
    }
    
    func registerCell(_ model : SDBaseDataModel) -> Void{
        let identifier_string = model.getCellIdentifier();
        if !self.identifierMap.contains(identifier_string) {
            self.identifierMap.append(identifier_string);
            self.register(model.cellClass(), forCellReuseIdentifier: identifier_string);
        }
    }
}

extension SDBaseTableView : UITableViewDataSource
{
        
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tList.count;
    }
   
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let model = self.tList[indexPath.row];
        let cell : SDBaseTableViewCell = tableView.dequeueReusableCell(withIdentifier: model.getCellIdentifier(), for: indexPath) as! SDBaseTableViewCell;
        cell.loadCellModel(model);
        return cell;
    }
    
}

extension SDBaseTableView : UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        let model = self.tList[indexPath.row];
        return model.height_cell;
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("这里执行了吧");
    }
}

