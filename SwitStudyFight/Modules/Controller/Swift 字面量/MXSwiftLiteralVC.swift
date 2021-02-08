//
//  MXSwiftLiteralVC.swift
//  SwitStudyFight
//
//  Created by mingxing on 2021/2/6.
//

import UIKit

class MXSwiftLiteralVC: MXBaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let aNumber = 3         //整型字面量
        let aString = "Hello"   //字符串字面量
        let aBool = true        //布尔值字面量
        
        print("aNumber = \(aNumber) aString = \(aString) aBool = \(aBool)")
        
        self.intLiteral()
        self.doubleLiteral()
        self.charactersLiteral()
    }

    //FIXME: 整型字面量
    /// 整型字面量
    func intLiteral() {
        let decimalInteger = 17         // 17 - 十进制表示
        let binaryInteger = 0b10001     // 17 - 二进制表示
        let octalInteger = 0o21         // 17 - 八进制表示
        let hexadecimalInteger = 0x11   // 17 - 十六进制表示
        
        print("decimalInteger = \(decimalInteger) binaryInteger = \(binaryInteger) octalInteger = = \(octalInteger) hexadecimaInteger = \(hexadecimalInteger)")
        
    }
    
    //FIXME: 浮点型字面量
    /// 浮点型字面量
    func doubleLiteral() {
        let decimalDouble = 12.1875         //十进制浮点型字面量
        
        let exponentDouble = 1.12875e1      //十进制浮点型字面量
        
        let hexadecimalDouble = 0xC.3P0     //十六进制浮点型字面量
        
        print("decimalDouble = \(decimalDouble) exponentDouble = \(exponentDouble) hexadecimalDouble = \(hexadecimalDouble)")
        
    }
    
    //FIXME: 字符串型字面量
    
    /// 字符串型字面量
    func charactersLiteral() {
        /*
         \0    空字符
         \\    反斜线 \
         \b    退格(BS) ，将当前位置移到前一列
         \f    换页(FF)，将当前位置移到下页开头
         \n    换行符
         \r    回车符
         \t    水平制表符
         \v    垂直制表符
         \'    单引号
         \"    双引号
         \000    1到3位八进制数所代表的任意字符
         \xhh...    1到2位十六进制所代表的任意字符
         */
        
        let stringL = "Hello\tWorld\n\n百度搜索网址：\'https:www.baidu.com\'"
        
        print(stringL)
    }
    
    //FIXME: 布尔型字面量
    /*
     true 表示真。
     false 表示假。
     nil 表示没有值
     */
}
