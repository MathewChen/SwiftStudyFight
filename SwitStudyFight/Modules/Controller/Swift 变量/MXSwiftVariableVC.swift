//
//  MXSwiftVariableVC.swift
//  SwitStudyFight
//
//  Created by mingxing on 2021/2/5.
//

import UIKit

class MXSwiftVariableVC: MXBaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.variableName()
        
        self.variableName2()
    }

    //MARK: 变量声明
    func variableName() {
        
        var varA = 42
        print(varA)
        
        
        /*
         //目前好像不能这么写了
         
         var varB = Float
         
         varB = 3.14159
         */

        var varB : Float = 3.14159
        
        print(varB)
        
    }
    
    //MARK: 变量命名
    func variableName2() {
        /*
         变量名可以由字母，数字和下划线组成。

         变量名需要以字母或下划线开始。

         Swift 是一个区分大小写的语言，所以字母大写与小写是不一样的。

         变量名也可以使用简单的 Unicode 字符
         */
        
        var _var = "Hello, Swift!"
        print(_var)
        
        var 中文写代码 = "中文可以写代码"
        
        var 百度 = "www.baidu.com"
        
        print(中文写代码)
        
        print(百度)
        
        var name = "百度"
        
        var site = "https://www.baidu.com/"
        
        print("\(name)的搜索地址为：\(site)")
    }
}
