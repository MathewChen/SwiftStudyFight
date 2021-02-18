//
//  MXSwiftStringVC.swift
//  SwitStudyFight
//
//  Created by mingxing on 2021/2/9.
//

import UIKit

class MXSwiftStringVC: MXBaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // 使用字符串字面量
        let stringA = "Hello, world"
        
        // String 实例化
        let stringB = String("Hello, world")
        
        print(stringA)
        print(stringB)
        
        self.funcEmptyString()
        self.funcConstant()
        self.funcInsertStr()
        self.funcStringConnect()
        self.funcStringCount()
        self.funcStringComparison()
        self.funcStringUnicode()
    }

    
    //MARK: 空字符串
    
    /// 空字符串
    func funcEmptyString() {
        
        // 使用字符串字面量创建空字符串
        let stringA = ""
        
        if stringA.isEmpty {
            print("stringA 是空的")
        }else {
            print("stringA 不是空的")
        }
        
        // 实例化 String 类来创建空字符串
        let stringB = String()
        
        if stringB.isEmpty {
            print("stringB 是空的")
        }else {
            print("stringB 不是空的")
        }
    }
    
    
    //MARK: 字符串常量
    
    /// 字符串常量
    func funcConstant() {
        // String 可被修改
        var stringA = "百度网址："
        stringA += "https://www.baidu.com"
        print(stringA)
        
        // StringB 不能修改
        let stringB = String("百度网址：")
        //报错：Left side of mutating operator isn't mutable: 'stringB' is a 'let' constant
//        stringB += "https://www.baidu.com"
        print(stringB)
    }
    
    
    //MARK: 字符串中插入值
    
    /// 字符串中插入值
    func funcInsertStr() {
        let varA = 20
        let constA = 100
        let varC:Float = 20.0
        
        let stringA = "\(varA) 乘以 \(constA) 等于 \(varC * 100)"
        print(stringA)
    }
    
    
    //MARK: 字符串连接
    
    /// 字符串连接
    func funcStringConnect() {
        let constA = "百度网址："
        let constB = "https://www.baidu.com"
        
        let stringA = constA + constB
        
        print(stringA)
        
    }
    
    
    //MARK: 字符串长度
    
    /// 字符串长度
    func funcStringCount() {
        
        let letA = "www.baidu.com"
        
        print("\(letA),长度为 \(letA.count)")
        
    }
    
    
    //MARK: 字符串比较
    
    /// 字符串比较
    func funcStringComparison() {
        let letA = "Hello,Swift!"
        let letB = "Hello,World!"
        
        if letA == letB {
            print("\(letA) 与 \(letB) 是相等的")
        }else {
            print("\(letA) 与 \(letB) 不是相等的")
        }
    }
    
    //MARK: Unicode 字符串
    
    /// 字符串
    func funcStringUnicode() {
        
        let unicodeString = "百度网址："
        
        print("UTF-8 编码")
        for code in unicodeString.utf8 {
            print("\(code)")
        }
        
        print("\n")
        
        
        print("UTF-16 编码")
        for code in unicodeString.utf16 {
            print("\(code)")
        }
        
        
        let myString : String = "256"
        let myInt : Int? = Int(myString)
        print(myInt!)
        
        
        if unicodeString.contains("百度") {
            print("包含")
        } else {
            print("不包含")
        }
        
        if unicodeString.hasPrefix("百度") {
            print("前缀是百度")
        }else {
            print("前缀不是百度")
        }
        
        if unicodeString.hasSuffix("") {
            print("后缀是：")
        }else {
            print("后缀不是：")
        }
    }
}
