//
//  MXSwiftBasicLanguage.swift
//  SwitStudyFight
//
//  Created by mingxing on 2021/2/4.
//

import UIKit

class MXSwiftBasicLanguage: MXBaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //FIXME: 第一句
        var myString = "Hello,World!"
        
        print(myString)
        
        myString = "changed!"
        
        print(myString)
        
        //FIXME: swift 标记
        
        //Swift 程序由多种标记组成，标记可以是单词，标识符，常量，字符串或符号。例如以下 Swift 程序由三种标记组成：
        print("test!")
        //以上语句由 3 个符号组成：单词( print )、符号( ( )、字符串( "test!" )。
        
        //FIXME: 注释
        //Swift的注释与C语言极其相似，单行注释以两个反斜线开头：
        
        /*  这也是一条注释
         */
        
        /* （注释嵌套）这是第一个多行注释的开头

        /* 这是嵌套的第二个多行注释 */

        这是第一个多行注释的结尾 */
        
        //FIXME: 分号
        /* 分号
         与其它语言不同的是，Swift不要求在每行语句的结尾使用分号(;)，但当你在同一行书写多条语句时，必须用分号隔开：
         */
        
        var fenhao = "fenhao"; print(fenhao); fenhao = "分号变了"; print(fenhao)
        
        biaoshifu()
        
        //FIXME: 空格
        /*
         Swift 空格
         Swift语言并不是像C/C++，Java那样完全忽视空格，Swift对空格的使用有一定的要求，但是又不像Python对缩进的要求那么严格。

         在Swift中，运算符不能直接跟在变量或常量的后面。例如下面的代码会报错：
         */
        
        //let a= 1 + 2
        
        //FIXME: 字面量
        let num = 42                // 整型字面量
        let num2 = 3.14159          // 浮点型字面量
        let str = "Hello, world"    // 字符串型字面量
        let bool = true              // 布尔型字面量
        
        //FIXME: 打印输出
        print("num = \(num) num2 = \(num2) str = \(str) bool = \(bool)")
        
        for x in 0...10 {
            print("\(x) ", terminator : "")
        }
        
        //FIXME: readLine这个有什么用？
        let theInput = readLine()
        
    }
    
    func biaoshifu() {
        
        //MARK: 标识符
        
        /*
         标识符
         标识符就是给变量、常量、方法、函数、枚举、结构体、类、协议等指定的名字。构成标识符的字母均有一定的规范，Swift语言中标识符的命名规则如下：

         区分大小写，Myname与myname是两个不同的标识符；

         标识符首字符可以以下划线（_）或者字母开始，但不能是数字；

         标识符中其他字符可以是下划线（_）、字母或数字。

         例如： userName、User_Name、_sys_val、身高等为合法的标识符，而2mail、room#和class为非法的标识符。

         注意:Swift中的字母采用的是Unicode编码[1]。Unicode叫做统一编码制，它包含了亚洲文字编码，如中文、日文、韩文等字符，甚至是我们在聊天工具中使用的表情符号

         如果一定要使用关键字作为标识符，可以在关键字前后添加重音符号（`），例如：
         */
        
        //这样写好像不行了？不过一般都不会这样做
//        let 'class' = "Runoob"
//        print('class')
    }
    
    func keyWords() {
        
        //MARK: 关键字
        
        /*
         //FIXME: 与声明有关的关键字
         class
         deinit
         enum
         extension
         func
         import
         init
         internal
         let
         operator
         private
         protocol
         public
         static
         struct
         subscript
         typealias
         var
         */
        
        /*
         /FIXME: 与语句有关的关键字
         break
         case
         continue
         default
         do
         else
         fallthrough
         for
         if
         in
         return
         switch
         where
         while
         */
        
        /*
         /FIXME: 表达式和类型关键字
         as
         dynamicType
         false
         is
         nil
         self
         Self
         super
         true
         _COLUMN
         _FILE_
         _FUNCTION_
         _LINE_
         */
        
        /*
         /FIXME: 在特定上下文中使用的关键字
         associativity
         convenience
         dynamic
         didSet
         final
         get
         infix
         inout
         lazy
         left
         mutating
         none
         nonmutation
         optional
         overiide
         postfix
         precedence
         refix
         Protocol
         required
         right
         set
         Type
         unowned
         weak
         willSet
         */
    }
}
