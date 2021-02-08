//
//  TitleListVC.swift
//  SwitStudyFight
//
//  Created by mingxing on 2021/2/4.
//

import UIKit

class TitleListVC: MXBaseViewController,UITableViewDelegate,UITableViewDataSource {

    var titleArr : NSArray = ["Swift 基本语法","Swift 数据类型","Swift 变量","Swift 可选类型","Swift 常量","Swift 字面量","一起来背单词吧"]
    
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
        
        self.capital()
    }
    
    //MARK: UITableViewDelegate
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
    
    //MARK: 点击Cell
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let titleStr : String = self.titleArr[indexPath.row] as! String
        
        if titleStr == "Swift 基本语法" {
            //FIXME: Swift 基本语法
            let basicVC : MXSwiftBasicLanguage = MXSwiftBasicLanguage.init()
            basicVC.title = titleStr
            self.navigationController?.pushViewController(basicVC, animated: true)
            
        }else if titleStr == "Swift 数据类型" {
            //FIXME: Swift 数据类型
            let dataTypeVC = MXSwiftDataTypeVC.init()
            dataTypeVC.title = titleStr
            self.navigationController?.pushViewController(dataTypeVC, animated: true)
            
        }else if titleStr == "Swift 变量" {
            //FIXME: Swift 变量
            let basic : MXSwiftVariableVC = MXSwiftVariableVC.init()
            basic.title = titleStr
            self.navigationController?.pushViewController(basic, animated: true)
            
        }else if titleStr == "Swift 可选类型" {
            //FIXME: Swift 可选类型
            let optionalVC : MXSwiftOptionalsVC = MXSwiftOptionalsVC.init()
            optionalVC.title = titleStr
            self.navigationController?.pushViewController(optionalVC, animated: true)
            
        }else if titleStr == "Swift 常量" {
            //FIXME: Swift 常量
            let letVC:MXSwiftLetVC = MXSwiftLetVC.init()
            letVC.title = titleStr
            self.navigationController?.pushViewController(letVC, animated: true)
            
        }else if titleStr == "Swift 字面量" {
            //FIXME: Swift 字面量
            let literalVC : MXSwiftLiteralVC = MXSwiftLiteralVC.init()
            literalVC.title = titleStr
            self.navigationController?.pushViewController(literalVC, animated: true)
            
        }else if titleStr == "一起来背单词吧" {
            //FIXME: Swift 一起来背单词吧
            let wordsVC : MXWordsVC = MXWordsVC.init()
            wordsVC.title = titleStr
            self.navigationController?.pushViewController(wordsVC, animated: true)
            
        }
    }
    
    //MARK: 写着玩玩，不比在意
    func capital() {
        let startNum : Float = 10000.0000
        var num : Float = startNum
        let mouthNum : Float = 100000 / 12
        for index in 0...120 {
            num = self.getTheReal(startCapital: num, mouthCapital: mouthNum, mouthRate: 0.019)
            
            let totalCapital = startNum + mouthNum * Float(index)
            
            let capital = (num - totalCapital) / num
            
            print("\(index)-----\(totalCapital)-----\(num)-----\(capital)")
            
            
        }
        
        
        
    }
    
    /// 计算一个月
    /// - Parameters:
    ///   - startCapital: 开始的资金
    ///   - mouthCapital: 一个月投入的资金
    ///   - mouthRate: 预计能够增长
    /// - Returns: 返回
    func getTheReal(startCapital : Float, mouthCapital : Float, mouthRate : Float) -> Float {
        let totalNum = (startCapital + mouthCapital) * mouthRate + (startCapital + mouthCapital)
        
        return totalNum
    }

}
