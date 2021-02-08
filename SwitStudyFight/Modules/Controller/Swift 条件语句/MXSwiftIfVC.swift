//
//  MXSwiftIfVC.swift
//  SwitStudyFight
//
//  Created by mingxing on 2021/2/8.
//

import UIKit

class MXSwiftIfVC: MXBaseViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.ifStatement()
        self.ifElseStatement()
        self.ifElseIfEElseStatement()
        self.embeddedIfStatement()
        self.switchStatement(index: 10)
    }
    
    //FIXME: if语句
    
    /// if语句
    func ifStatement() {
        
        let letA = 10
        
        let letB = 20
        
        if letA < letB {
            print("letA 小于 \(letB)")
        }
        
        print("letA 变量的值为 \(letA)")
    }
    
    //FIXME: if...else语句
    
    /// if...else语句
    func ifElseStatement() {
        let letA = 100
        
        let letB = 20
        
        if letA < 20 {
            print("letA 小于 \(letB)")
        }else {
            print("letA 大于 \(letB)")
        }
        
        print("letA 变量的值为 \(letA)")
    }
    
    //FIXME: if...else if...else语句
    
    /// if...else if...else语句
    func ifElseIfEElseStatement() {
        
        var varA:Int = 100;
        
        /* 检测布尔条件 */
        if varA == 20 {
            /* 如果条件为 true 执行以下语句 */
            print("varA 的值为 20");
        } else if varA == 50 {
            /* 如果条件为 true 执行以下语句 */
            print("varA 的值为 50");
        } else {
            /* 如果以上条件都为 false 执行以下语句 */
            print("没有匹配条件");
        }
        print("varA 变量的值为 \(varA)");
    }
    
    //FIXME: 内嵌 if 语句
    
    /// 内嵌 if 语句
    func embeddedIfStatement() {
        var varA:Int = 100;
        var varB:Int = 200;
        
        /* 检测布尔条件 */
        if varA == 100 {
            /* 如果条件为 true 执行以下语句 */
            print("第一个条件为 true");
            
            if varB == 200 {
                /* 如果条件为 true 执行以下语句 */
                print("第二个条件也是 true");
            }
        }
        print("varA 变量的值为 \(varA)");
        print("varB 变量的值为 \(varB)");
    }
    
    //FIXME: switch 语句
    
    /// switch 语句
    func switchStatement(index : Int) {
        
        /*
         注意：在大多数语言中，switch 语句块中，case 要紧跟 break，否则 case 之后的语句会顺序运行，而在 Swift 语言中，默认是不会执行下去的，switch 也会终止。如果你想在 Swift 中让 case 之后的语句会按顺序继续运行，则需要使用 fallthrough 语句。
         */
        switch index {
        case 100  :
            print( "index 的值为 100")
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
