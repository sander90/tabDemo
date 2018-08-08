# 对Tableview的简单封装 

在复杂的页面设计中，经常用到是tablview，或者collectionView 这个控件，如果掌控不好，逻辑页面就会写得很乱，这里简单的记录下

> UITableViewDataSource

对这个代理不做解释了，主要对`func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell`做文章

`UITableViewCell` 有与之对应的model，这个model中存储着cell显示的内容，针对特殊的布局的逻辑，或者也可以放cell中的点击事件的回馈，等

``func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let model = self.tList[indexPath.row];
        let cell : SDBaseTableViewCell = tableView.dequeueReusableCell(withIdentifier: model.getCellIdentifier(), for: indexPath) as! SDBaseTableViewCell;
        cell.loadCellModel(model);
        return cell;
    }``

`model.getCellIdentifier()`获取cell在tableview中的唯一标示，这个也是model和cell联系起来的关键

`cell.loadCellModel(model);` 是cell 加载 model中的数据

有话憋不出文字，千言万语都在代码中