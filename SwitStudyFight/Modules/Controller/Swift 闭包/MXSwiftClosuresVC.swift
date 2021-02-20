//
//  MXSwiftClosuresVC.swift
//  SwitStudyFight
//
//  Created by mingxing on 2021/2/19.
//

import UIKit

class MXSwiftClosuresVC: MXBaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        shili()
        
        funcSorted()
        
        funcParamsAbbreviation()
        
        funcOperator()
        
        //尾随闭包
        func someFunctionThatTakesAClosure(closure: () -> Void) {
            // 函数体部分
            print("函数体部分")
        }

        // 以下是不使用尾随闭包进行函数调用
        someFunctionThatTakesAClosure{
            // 闭包主体部分
            print("闭包主体部分")
        }

        // 以下是使用尾随闭包进行函数调用
        someFunctionThatTakesAClosure() {
          // 闭包主体部分
        }
        
        let incrementByTen = makeIncrementor(forIncrement: 10)
        
        // 返回的值为10
        print(incrementByTen())
        
        // 返回的值为20
        print(incrementByTen())
        
        // 返回的值为30
        print(incrementByTen())
        
        // 返回的值为40
        print(incrementByTen())
        
        let alsoIncrementByTen = incrementByTen
        
        // 返回的值也为50
        print(alsoIncrementByTen())
        
    }

    //MARK: 实例
    
    /// 实例
    func shili() {
        let studname = {print("swift 闭包实例")}
        studname()
        
        //以下闭包形式接收两个参数并返回int
        let divide = {(val1:Int, val2:Int) -> Int in
            return val1 / val2
        }
        
        let result = divide(200,20)
        print(result)
    }
    
    //MARK: 闭包表达式
    
    /// sorted 方法
    func funcSorted() {
        let names = ["AT", "AE", "D", "S", "BE"]
        
        //使用普通函数（或内嵌函数提供排序功能，闭包函数类型需为(String, String) -> Bool.
        func backwards(s1:String, s2:String) ->Bool {
            return s1 < s2
        }
        
        let reversed = names.sorted(by: backwards)
        
        print(reversed)
    }
    
    /// 参数名称缩写
    func funcParamsAbbreviation() {
        let names = ["AT", "AE", "D", "S", "BE"]
        
        let reversed = names.sorted(by: { $0 > $1 })
        
        print(reversed)
        
    }
    
    /// 运算符函数
    func funcOperator() {
        let names = ["AT", "AE", "D", "S", "BE"]
        
        let reversed = names.sorted(by: >)
        
        print(reversed)
        
    }
    
    
    /// 捕获值
    /// - Parameter amount: 参数
    /// - Returns: () -> Int
    func makeIncrementor(forIncrement amount: Int) -> () -> Int {
        
        /*
         一个函数makeIncrementor ，它有一个Int型的参数amout, 并且它有一个外部参数名字forIncremet，意味着你调用的时候，必须使用这个外部名字。返回值是一个()-> Int的函数。

         函数体内，声明了变量 runningTotal 和一个函数 incrementor。

         incrementor函数并没有获取任何参数，但是在函数体内访问了runningTotal和amount变量。这是因为其通过捕获在包含它的函数体内已经存在的runningTotal和amount变量而实现。

         由于没有修改amount变量，incrementor实际上捕获并存储了该变量的一个副本，而该副本随着incrementor一同被存储。
         */
        var runingTotal = 0
        
        func incrementor() -> Int {
            runingTotal += amount
            return runingTotal
        }
        
        return incrementor
    }

    /*
     闭包是引用类型
     上面的例子中，incrementByTen是常量，但是这些常量指向的闭包仍然可以增加其捕获的变量值。

     这是因为函数和闭包都是引用类型。

     无论您将函数/闭包赋值给一个常量还是变量，您实际上都是将常量/变量的值设置为对应函数/闭包的引用。 上面的例子中，incrementByTen指向闭包的引用是一个常量，而并非闭包内容本身。

     这也意味着如果您将闭包赋值给了两个不同的常量/变量，两个值都会指向同一个闭包：
     */
}

/*
 学习杂谈：
    1、看了两遍闭包，感觉还是没有很好地理解闭包。希望以后能够更加充分的理解。
    
 */
