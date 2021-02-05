//
//  TitleListVC.swift
//  SwitStudyFight
//
//  Created by mingxing on 2021/2/4.
//

import UIKit

class TitleListVC: MXBaseViewController,UITableViewDelegate,UITableViewDataSource {

    var titleArr : NSArray = ["Swift 基本语法","Swift 数据类型","Swift 变量"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //        self.title = "Swift学习"
        self.title = "加油！！！"
        
        let tableView : UITableView = UITableView.init(frame: self.view.bounds, style: .plain)
        
        self.view .addSubview(tableView)
        
        tableView.delegate = self
        tableView.dataSource = self
        tableView.backgroundColor = UIColor.white
        tableView.register(TitleListCell.classForCoder(), forCellReuseIdentifier: "testCellId")
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.titleArr.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cellId = "testCellId"
        
        let cell = tableView.dequeueReusableCell(withIdentifier: cellId) as! TitleListCell
        
        let titleStr = self.titleArr[indexPath.row]
        
        cell.fillCellData(labelTitle: "\(titleStr)")
        cell.backgroundColor = UIColor.gray
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let titleStr : String = self.titleArr[indexPath.row] as! String
        
        if titleStr == "Swift 基本语法" {
            let basicVC : MXSwiftBasicLanguage = MXSwiftBasicLanguage.init()
            basicVC.title = titleStr
            self.navigationController?.pushViewController(basicVC, animated: true)
            
        }else if titleStr == "Swift 数据类型" {
            let dataTypeVC = MXSwiftDataTypeVC.init()
            dataTypeVC.title = titleStr
            self.navigationController?.pushViewController(dataTypeVC, animated: true)
            
        }else if titleStr == "Swift 变量" {
            let basic : MXSwiftVariableVC = MXSwiftVariableVC.init()
            basic.title = titleStr
            self.navigationController?.pushViewController(basic, animated: true)
            
        }
    }

}
