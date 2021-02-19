//
//  MXSwiftFuncVC.swift
//  SwitStudyFight
//
//  Created by mingxing on 2021/2/18.
//

import UIKit

class MXSwiftFuncVC: MXBaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        print(runoob(site: "www.baidu.com"))
        
        print(websiteDetail(name: "百度", site: "www.baidu.com"))
        print(websiteDetail(name: "Google", site: "www.google.com"))
        
        print(siteName())
        
        let bounds = minMax(array: [8, -6, 2, 109, 3, 71])
        print("最小值为 \(bounds.min) ，最大值为 \(bounds.max)")
        
        baidu(side: "www.baidu.com")
        
        var num = pow(firstArg: 5, secondArg: 3)
        num += num
        
        
        vari(members: 4,3,5)
        vari(members: 4.5,3.1,5.6)
        vari(members: "Google","Baidu","Apple")
        
        
        var x = 1
        var y = 5
        
        swapTwoInts(&x, &y)
        print("x 现在的值 \(x), y 现在的值 \(y)")
        
        print(inputs(no1: 20, no2: 10))
        print(inputs(no1: 36, no2: 6))
        
        /*
         使用函数类型
         在Swift中，使用函数类型就像使用其他类型一样。例如，你可以定义一个类型为函数的常量或变量，并将适当的函数赋值给它：
         */
        
        let addition: (Int,Int) -> Int = sum
        print("addition = 输出结果：\(addition(40,89))")
        
        /*
         函数类型作为参数类型、函数类型作为返回类型
         我们可以将函数作为参数传递给另外一个参数：
         */
        
        another(addition: sum, a: 10, b: 20)
        
        let decrem = calcDeccrement(forDecrement: 30)
        print(decrem())
    }

    //MARK: 函数调用
    
    /// 实例
    /// - Parameter site: 传入地址
    /// - Returns: 返回
    func runoob(site: String) -> String {
        return site
    }
    
    //MARK: 函数参数
    
    /// 获取网址
    /// - Parameters:
    ///   - name: 网址名称
    ///   - site: 网址地址
    /// - Returns: 获取网址
    func websiteDetail(name:String, site:String) -> String {
        return name + "：" + site
    }
    
    //MARK: 不带参数函数
    
    /// 百度百科
    /// - Returns: 百度百科
    func siteName() -> String {
        return "百度百科"
    }
    
    //MARK: 元组作为函数返回值
    
    /// 获取最小值最大值
    /// - Parameter array: 数组
    /// - Returns: 最小值最大值
    func minMax(array:[Int]) -> (min:Int, max:Int) {
        
        /*
         注意
         可选元组类型如(Int, Int)?与元组包含可选类型如(Int?, Int?)是不同的.可选的元组类型，整个元组是可选的，而不只是元组中的每个元素值。
         */
        var currentMin:Int = array[0]
        var currentMax:Int = array[0]
        
        for current in array[1..<array.count] {
            if current < currentMin {
                currentMin = current
            }
            
            if current > currentMax {
                currentMax = current
            }
        }
        
        return (currentMin, currentMax)
    }
    
    //MARK: 没有返回值函数
    
    /// 没有返回值函数
    /// - Parameter side: 网址
    func baidu(side: String) {
        print("这是一个网站：\(side)")
    }
     
    //MARK: 外部参数名
    
    /// 外部参数名
    /// - Parameters:
    ///   - a: 参数 a
    ///   - b: 参数 b
    /// - Returns: 返回计算结果
    func pow(firstArg a:Int, secondArg b:Int) -> Int {
        var res = a
        for _ in 1..<b {
            res = res * a
        }
        print(res)
        return res
    }
    
    //MARK: 可变参数
    func vari<N>(members: N...) {
        for i in members {
            print(print(i))
        }
    }
    
    //MARK: 常量，变量及 I/O 参数
    
    /// 常量，变量及 I/O 参数
    /// - Parameters:
    ///   - a: 参数
    ///   - b: 参数
    func swapTwoInts(_ a: inout Int, _ b: inout Int) {
        let temporaryA = a
        
        a = b
        
        b = temporaryA
        
    }
    
    //MARK: 函数类型及使用
    func inputs(no1: Int, no2: Int) -> Int {
        return no1/no2
    }
    
    //MARK: 函数类型作为参数类型、函数类型作为返回类型
    
    func sum(a: Int, b: Int) -> Int {
       return a + b
    }
    
    func another(addition: (Int, Int) -> Int, a: Int, b: Int) {
        print("输出结果: \(addition(a, b))")
    }
    
    //MARK: 函数嵌套
    
    /// 函数嵌套
    /// - Parameter total: 输入值
    /// - Returns: 返回值
    func calcDeccrement(forDecrement total:Int) -> () -> Int {
        
        var overallDecrement = 0
        func decrementer() -> Int {
            overallDecrement -= total
            return overallDecrement
        }
        return decrementer
    }
}
