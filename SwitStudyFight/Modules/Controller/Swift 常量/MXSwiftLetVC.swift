//
//  MXSwiftLetVC.swift
//  SwitStudyFight
//
//  Created by mingxing on 2021/2/6.
//

import UIKit

class MXSwiftLetVC: MXBaseViewController {

    /*
     常量一旦设定，在程序运行时就无法改变其值。

     常量可以是任何的数据类型如：整型常量，浮点型常量，字符常量或字符串常量。同样也有枚举类型的常量：

     常量类似于变量，区别在于常量的值一旦设定就不能改变，而变量的值可以随意更改。
     
     */
    override func viewDidLoad() {
        super.viewDidLoad()

        //FIXME: 常量声明
        let constA = 42
        
        print(constA)
        
        //FIXME: 类型标注
        
        /*
         当你声明常量或者变量的时候可以加上类型标注（type annotation），说明常量或者变量中要存储的值的类型。如果要添加类型标注，需要在常量或者变量名后面加上一个冒号和空格，然后加上类型名称。
         */
        
        let constB:Float = 3.14159
        
        print(constB)
        
        //FIXME: 常量命名
        
        /*
         常量的命名可以由字母，数字和下划线组成。
         常量需要以字母或下划线开始。
         Swift 是一个区分大小写的语言，所以字母大写与小写是不一样的。
         常量名也可以使用简单的 Unicode 字符
         */
        let _const = "Hello, Swift"
        print(_const)
        
        let 你好 = "你好 Swift"
        
        print(你好)
        
        //FIXME: 常量输出
        
        let name = "百度"
        let site = "https://www.baidu.com"
        
        print("\(name)的搜索网址为：\(site)")
    }

    

}
