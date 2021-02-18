//
//  MXSwiftCharacterVC.swift
//  SwitStudyFight
//
//  Created by mingxing on 2021/2/18.
//

import UIKit

class MXSwiftCharacterVC: MXBaseViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let char1 : Character = "A"
        let char2 : Character = "B"
        
        print("char1 的值为 \(char1)")
        print("char2 的值为 \(char2)")
        
        self.funcCharacterFor()
        self.funcCharacterMoreWords()
        self.funcCharacterAppend()
    }
    
    //MARK: 一些错误的赋值
    
    /// 一些错误的赋值
    func funcCharacterMoreWords() {
        
        //swift 中以下赋值会报错（如果你想在 Character（字符） 类型的常量中存储更多的字符）
        //let char : Character = "AB"
        //
        //print("Value of char \(char)")
        
        //swift 中以下赋值会报错 （Swift 中不能创建空的 Character（字符） 类型变量或常量）
        //let char1 : Character = ""
        //var char2 : Character = ""
        
    }
    
    //MARK: 遍历字符串中的字符
    
    /// 遍历字符串中的字符
    func funcCharacterFor() {
        for ch in "Runoob" {
            print(ch)
        }
    }
    
    //MARK: 字符串连接字符
    
    /// 字符串连接字符
    func funcCharacterAppend() {
        var varA : String = "Hello"
        let varB : Character = "G"
        
        varA.append(" \(varB)")
        
        print("varC = \(varA)")
    }
}
