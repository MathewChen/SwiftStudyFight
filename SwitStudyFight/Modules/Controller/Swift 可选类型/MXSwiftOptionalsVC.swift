//
//  MXSwiftOptionalsVC.swift
//  SwitStudyFight
//
//  Created by mingxing on 2021/2/5.
//

import UIKit

class MXSwiftOptionalsVC: MXBaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        var optionalInteger : Int?
        
        optionalInteger = 42
        
        var optionalInteger2 : Optional<Int>
        
        optionalInteger2 = 666

        
        print(optionalInteger)
        
        print(optionalInteger2)
        
        self.stringOptional()
        self.stringForcedUnwrapping()
        self.stringAutoUnwrapping()
        self.stringOptionalBinding()
    }

    func stringOptional() {
        var myString:String? = nil
        
        if myString != nil {
            print(myString)
        }else {
            print("字符串为 nil")
        }
    }
    
    //MARK: 强制解析
    /// 当你确定可选类型确实包含值之后，你可以在可选的名字后面加一个感叹号（!）来获取值。这个感叹号表示"我知道这个可选有值，请使用它。"这被称为可选值的强制解析（forced unwrapping）。
    func stringForcedUnwrapping() {
        var myString:String?
        
        myString = "Hello, Swift!"
        
        if myString != nil {
            print(myString)
        }else {
            print("myString 值为 nil")
        }
        
        //强制解析可选值，使用感叹号（!）
        if myString != nil {
            print(myString!)
        }else {
            print("myString 值为 nil")
        }
    }
    
    //MARK: 自动解析(但好像没有效果)
    /// 你可以在声明可选变量时使用感叹号（!）替换问号（?）。这样可选变量在使用时就不需要再加一个感叹号（!）来获取值，它会自动解析。
    func stringAutoUnwrapping() {
        var myString:String!
        
        myString = "Hello, Swift!"
        
        if myString != nil {
            print(myString)
        }else {
            print("myString 值为 nil")
        }
        
    }
    
    //MARK: 可选绑定
    
    /// 使用可选绑定（optional binding）来判断可选类型是否包含值，如果包含就把值赋给一个临时常量或者变量。可选绑定可以用在if和while语句中来对可选类型的值进行判断并把值赋给一个常量或者变量。
    func stringOptionalBinding() {
        var myString:String?
        
        myString = "Hello, Swift!"
        
        if let yourString = myString {
            print("你的字符串值为 -\(yourString)")
        }else {
            print("你的字符串没有值")
        }
    }
}
