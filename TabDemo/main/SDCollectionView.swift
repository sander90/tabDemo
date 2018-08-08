//
//  SDCollectionView.swift
//  EasyCallMyPhone
//
//  Created by sander shan on 2018/6/11.
//  Copyright © 2018年 shansander. All rights reserved.
//

import UIKit

class SDCollectionView: UICollectionView {

    var tList = [SDBaseCollectionDataModel]();
    
    var reuseIdentifierMap = [String]();
    
    var sdDataSource : UICollectionViewDataSource?
    var sdDelegate : UICollectionViewDelegate?
    
    init(viewLayout: UICollectionViewLayout) {
        super.init(frame: CGRect.init(), collectionViewLayout: viewLayout);
        
        self.dataSource = self;
        self.delegate = self;
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    func addCollectionModel(_ model: SDBaseCollectionDataModel) {
        tList.append(model);
        self.registerCell(model);
    }
    
    func addCollectionModels(_ models: [SDBaseCollectionDataModel]) -> Void {
        tList.append(contentsOf: models);
        for model in models {
            self.registerCell(model);
        }
    }
    
    
    func registerCell(_ model : SDBaseCollectionDataModel) -> Void {
        let reuseIdentifier_string = model.getReuseIdentifier();
        if !reuseIdentifierMap.contains(reuseIdentifier_string) {
            reuseIdentifierMap.append(reuseIdentifier_string);
            self.register(model.cellClass(), forCellWithReuseIdentifier: model.getReuseIdentifier());
        }
    }
}

extension SDCollectionView : UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if self.sdDataSource != nil {
            return (self.sdDataSource?.collectionView(collectionView, numberOfItemsInSection: section))!;
        }
        return self.tList.count;
    }
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if self.sdDataSource != nil {
            return (self.sdDataSource?.collectionView(collectionView, cellForItemAt: indexPath))!;
        }
        let model = self.tList[indexPath.row];
        let cell : SDBaseCollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: model.getReuseIdentifier(), for: indexPath) as! SDBaseCollectionViewCell;
        cell.loadCollectionModel(model: model);
        return cell;
    }

}
extension SDCollectionView : UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if self.sdDelegate != nil {
            self.sdDelegate?.collectionView!(collectionView, didSelectItemAt: indexPath);
        }
    }
}
