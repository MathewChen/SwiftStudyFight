//
//  MXSwiftDataTypeVC.swift
//  SwitStudyFight
//
//  Created by mingxing on 2021/2/5.
//

import UIKit

class MXSwiftDataTypeVC: MXBaseViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        builtInDataTypes()
        
        typealiasFunc()
        
        typeSafe()
        
        typeInference()
    }
    
    //MARK: 内置数据类型
    
    /// 内置数据类型
    func builtInDataTypes() {
        //FIXME: Int
        /*
         在 32 位系统上, Int 和 Int32 长度相同。
         
         在 64 位系统上, Int 和 Int64 长度相同。
         
         在 32 位系统上, UInt 和 UInt32 长度相同。
         
         在 64 位系统上, UInt 和 UInt64 长度相同。
         
         Int8, Int16, Int32, Int64 分别表示 8 位, 16 位, 32 位, 和 64 位的有符号整数形式。
         
         UInt8, UInt16, UInt32, UInt64 分别表示 8 位, 16 位, 32 位 和 64 位的无符号整数形式。
         */
        
        //FIXME: 浮点数：Float、Double
        
        /*
         Double 表示64位浮点数。当你需要存储很大或者很高精度的浮点数时请使用此类型。
         Float 表示32位浮点数。精度要求不高的话可以使用此类型。
         注意：
         Double精确度很高，至少有15位数字，而 Float 最少只有6位数字。选择哪个类型取决于你的代码需要处理的值的范围。
         */
        
        //FIXME: 布尔值：Bool
        
        /*
         Swift 有一个基本的布尔（Boolean）类型，叫做 Bool。布尔值指逻辑上的值，因为它们只能是真或者假。Swift 有两个布尔常量，true 和 false。
         */
        
        //FIXME: 字符串：String
        
        let str = "Hello, World!"
        print(str)
        
        //FIXME: 字符：Character
        
        "C"
        
        //FIXME: 可选类型：Optional
    }
    
    //MARK: 数值范围
    /*
     类型    大小（字节）    区间值
     Int8    1 字节    -128 到 127
     UInt8    1 字节    0 到 255
     Int32    4 字节    -2147483648 到 2147483647
     UInt32    4 字节    0 到 4294967295
     Int64    8 字节    -9223372036854775808 到 9223372036854775807
     UInt64    8 字节    0 到 18446744073709551615
     Float    4 字节    1.2E-38 到 3.4E+38 (~6 digits)
     Double    8 字节    2.3E-308 到 1.7E+308 (~15 digits)
     */
    
    //MARK: 类型别名
    func typealiasFunc() {
        typealias Feet = Int
        
        let num : Feet = 100
        
        print(num)
        
    }
    
    //MARK: 类型安全
    func typeSafe() {
        var varA = 42
        //error: cannot assign value of type 'String' to type 'Int'
        //varA = "This is hello!"
        print(varA)
    }
    
    //MARK: 类型推断
    func typeInference() {
        let meaningOfLine = 45
        // meaningOfLife 会被推测为 Int 类型
        
        let pi = 3.14159
        // pi 会被推测为 Double 类型
        
        let otherPi = 3 + 0.14159
        
        print("meaningOfLine = \(meaningOfLine) pi = \(pi) otherPi = \(otherPi)")
        
    }
}
