//
//  MXSwiftForVC.swift
//  SwitStudyFight
//
//  Created by mingxing on 2021/2/8.
//

import UIKit

class MXSwiftForVC: MXBaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.funcForIn()
        self.funcWhile()
        self.funcRepeatWhile()
        self.funcContinue()
        self.funcBreak()
        self.funcFallthrough(index: 10)
    }

    //MARK: for-in 循环
    
    /// for-in 循环
    func funcForIn() {
        for index in 1...5 {
            print("\(index) 乘于 5 为：\(index * 5)")
        }
        
        let someInst:[Int] = [10,20,30]
        
        for index in someInst {
            print("index 的值为 \(index)")
        }
    }
    
    //MARK: While 循环
    
    /// While 循环
    func funcWhile() {
        
        var index = 10
        
        while index < 20 {
            print( "index 的值为 \(index)")
            index += 1
        }
    }
    
    
    //MARK: repeat...while 循环
    
    /// repeat...while 循环
    func funcRepeatWhile() {
        //请注意，条件表达式出现在循环的尾部，所以循环中的 statement(s) 会在条件被测试之前至少执行一次。
        var repeatNum = 10
        
        repeat{
            print("index 的值为 \(repeatNum)")
            repeatNum += 1
        }while repeatNum < 5
    }
    
    //MARK: Continue 语句
    
    /// Continue 语句
    func funcContinue() {
        
        var continueNum = 10
        
        repeat{
            continueNum += 1
            
            if continueNum == 15 {
                continue
            }
            
            print("continueNum = \(continueNum)")
        }while continueNum < 20
    }
    
    //MARK: Break 语句
    
    /// Break 语句
    func funcBreak() {
        var breakNum = 10
        
        repeat{
            breakNum += 1
            if breakNum == 15 {
                break
            }
            print("breakNum = \(breakNum)")
            
        }while breakNum < 20
        
    }
    
    //MARK: Fallthrough 语句
    
    /// Fallthrough 语句
    /// - Parameter index: 判断值
    func funcFallthrough(index : Float) {

        switch index {
           case 100  :
              print( "index 的值为 100")
              fallthrough
           case 10,15  :
              print( "index 的值为 10 或 15")
              fallthrough
           case 5  :
              print( "index 的值为 5")
           default :
              print( "默认 case")
        }
    }
}
