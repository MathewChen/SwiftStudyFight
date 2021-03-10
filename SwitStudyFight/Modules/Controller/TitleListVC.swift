//
//  TitleListVC.swift
//  SwitStudyFight
//
//  Created by mingxing on 2021/2/4.
//

import UIKit

class TitleListVC: MXBaseViewController,UITableViewDelegate,UITableViewDataSource {

    /*
     
     RUNOOB
     基础语法 学习地址：
     https://www.runoob.com/swift/swift-tutorial.html
     
     */
    var titleArr : NSArray = ["Swift 基本语法","Swift 数据类型","Swift 变量","Swift 可选类型","Swift 常量","Swift 字面量","Swift 运算符","Swift 条件语句","Swift 循环","Swift 字符串","Swift 字符","Swift 数组","Swift 字典","Swift 函数","Swift 枚举","Swift 结构体","一起来背单词吧"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //        title = "Swift学习"
//        title = "加油！！！"
        title = "加油！！！"
        let tableView : UITableView = UITableView.init(frame: view.bounds, style: .plain)
        
        view.addSubview(tableView)
        tableView.delegate = self
        tableView.dataSource = self
        tableView.backgroundColor = UIColor.white
        tableView.register(TitleListCell.classForCoder(), forCellReuseIdentifier: "testCellId")
        
//        capital()
    }
    
    //MARK: UITableViewDelegate
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return titleArr.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cellId = "testCellId"
        
        let cell = tableView.dequeueReusableCell(withIdentifier: cellId) as! TitleListCell
        
        let titleStr = titleArr[indexPath.row]
        
        cell.fillCellData(labelTitle: "\(titleStr)")
        cell.backgroundColor = UIColor.white
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }
    
    //MARK: 点击Cell
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let titleStr : String = titleArr[indexPath.row] as! String
        
        if titleStr == "Swift 基本语法" {
            //FIXME: Swift 基本语法
            let basicVC : MXSwiftBasicLanguage = MXSwiftBasicLanguage.init()
            basicVC.title = titleStr
            navigationController?.pushViewController(basicVC, animated: true)
            
        }else if titleStr == "Swift 数据类型" {
            //FIXME: Swift 数据类型
            let dataTypeVC = MXSwiftDataTypeVC.init()
            dataTypeVC.title = titleStr
            navigationController?.pushViewController(dataTypeVC, animated: true)
            
        }else if titleStr == "Swift 变量" {
            //FIXME: Swift 变量
            let basic : MXSwiftVariableVC = MXSwiftVariableVC.init()
            basic.title = titleStr
            navigationController?.pushViewController(basic, animated: true)
            
        }else if titleStr == "Swift 可选类型" {
            //FIXME: Swift 可选类型
            let optionalVC : MXSwiftOptionalsVC = MXSwiftOptionalsVC.init()
            optionalVC.title = titleStr
            navigationController?.pushViewController(optionalVC, animated: true)
            
        }else if titleStr == "Swift 常量" {
            //FIXME: Swift 常量
            let letVC:MXSwiftLetVC = MXSwiftLetVC.init()
            letVC.title = titleStr
            navigationController?.pushViewController(letVC, animated: true)
            
        }else if titleStr == "Swift 字面量" {
            //FIXME: Swift 字面量
            let literalVC : MXSwiftLiteralVC = MXSwiftLiteralVC.init()
            literalVC.title = titleStr
            navigationController?.pushViewController(literalVC, animated: true)
            
        }else if titleStr == "Swift 运算符" {
            //FIXME: Swift 运算符
            let operatorVC : MXSwiftOperatorVC = MXSwiftOperatorVC.init()
            operatorVC.title = titleStr
            navigationController?.pushViewController(operatorVC, animated: true)
            
        }else if titleStr == "Swift 条件语句" {
            //FIXME: Swift 条件语句
            let ifVC : MXSwiftIfVC = MXSwiftIfVC.init()
            ifVC.title = titleStr
            navigationController?.pushViewController(ifVC, animated: true)
        }else if titleStr == "Swift 循环" {
            //FIXME: Swift 循环
            let forVC : MXSwiftForVC = MXSwiftForVC.init()
            forVC.title = titleStr
            navigationController?.pushViewController(forVC, animated: true)
            
        }else if titleStr == "Swift 字符串" {
            //FIXME: Swift 字符串
            let stringVC : MXSwiftStringVC = MXSwiftStringVC.init()
            stringVC.title = titleStr
            navigationController?.pushViewController(stringVC, animated: true)
            
        }else if titleStr == "Swift 字符" {
            //FIXME: Swift 字符
            let characterVC : MXSwiftCharacterVC = MXSwiftCharacterVC.init()
            characterVC.title = titleStr
            navigationController?.pushViewController(characterVC, animated: true)
            
        }else if titleStr == "Swift 数组" {
            //FIXME: Swift 数组
            let arrayVC : MXSwiftArrayVC = MXSwiftArrayVC.init()
            arrayVC.title = titleStr
            navigationController?.pushViewController(arrayVC, animated: true)
            
        }else if titleStr == "Swift 字典" {
            //FIXME: Swift 字典
            let dicVC : MXSwiftDicVC = MXSwiftDicVC.init()
            dicVC.title = titleStr
            navigationController?.pushViewController(dicVC, animated: true)
            
        }else if titleStr == "Swift 函数" {
            //FIXME: Swift 字典
            let funcVC : MXSwiftFuncVC = MXSwiftFuncVC.init()
            funcVC.title = titleStr
            navigationController?.pushViewController(funcVC, animated: true)
            
        }else if titleStr == "Swift 枚举" {
            //FIXME: Swift 枚举
            let enumVC : MXSwiftEnumVC = MXSwiftEnumVC.init()
            enumVC.title = titleStr
            navigationController?.pushViewController(enumVC, animated: true)
            
        }else if titleStr == "Swift 结构体" {
            //FIXME: Swift 结构体
            let structVC = MXSwiftStructVC.init()
            structVC.title = titleStr
            navigationController?.pushViewController(structVC, animated: true)
        }else if titleStr == "一起来背单词吧" {
            //FIXME: Swift 一起来背单词吧
            let wordsVC : MXWordsVC = MXWordsVC.init()
            wordsVC.title = titleStr
            navigationController?.pushViewController(wordsVC, animated: true)
            
        }
    }
    
    //MARK: 写着玩玩，不比在意
    func capital() {
        let startNum : Float = 10000.0000
        var num : Float = startNum
        let mouthNum : Float = 100000 / 12
        for index in 0...120 {
            num = getTheReal(startCapital: num, mouthCapital: mouthNum, mouthRate: 0.019)
            
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
