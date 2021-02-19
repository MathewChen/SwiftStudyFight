//
//  MXSwiftArrayVC.swift
//  SwitStudyFight
//
//  Created by mingxing on 2021/2/18.
//

import UIKit

class MXSwiftArrayVC: MXBaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        //推荐
        let arrayInt : [Int] = []
        let arrayString : [String] = []
        
        //不推荐
        let arrayInt2 = [Int]()
        let arrayString2 = [String]()
        
        funcInitArrray()
        funcVisitArray()
        funcForArray()
        funcArrayMerge()
        funcArrayCount()
        funcArrayIsEmpty()
    }

    //MARK: 创建数组
    
    /// 创建数组
    func funcInitArrray() {

        //var someArray = [Sometype]()
        var someArray = [Int]()
        someArray.append(5)
        someArray.append(8)
        print(someArray)
        
        var someInts = [Int](repeating: 0, count: 3)
        var someStrings : [String] = ["10","20","30"]

        print("someInts = \(someInts)")
        print("someStrings = \(someStrings)")
    }

    //MARK: 访问数组
    func funcVisitArray() {
        
        let someInst = [Int](repeating: 10, count: 3)
        
        let someVar = someInst[0]
        
        print("第一个元素的值 \(someVar)")
        print("第二个元素的值 \(someInst[1])")
        print("第三个元素的值 \(someInst[2])")
    }
    
    //MARK: 修改数组
    
    /// 修改数组
    func funcChangeArray() {
        var someInts = [Int]()
        
        someInts.append(20)
        someInts.append(30)
        someInts += [40]
        
        // 修改第二个元素
        someInts[1] = 33
        
        let someVar = someInts[0]
        
        
        print( "第一个元素的值 \(someVar)" )
        print( "第二个元素的值 \(someInts[1])" )
        print( "第三个元素的值 \(someInts[2])" )
    }
    
    //MARK: 遍历数组
    
    /// 遍历数组
    func funcForArray() {
        
        var someStrs = [String]()
        
        someStrs.append("I")
        someStrs.append("Love")
        someStrs.append("YOU")
        
        someStrs += ["SWIFT"]
        
        for str in someStrs {
            print(str)
        }
        
        for (index, str) in someStrs.enumerated() {
            print("在 index = \(index) 位置上的值为 \(str)")
        }
    }
    
    //MARK: 合并数组
    
    /// 合并数组
    func funcArrayMerge() {
        //我们可以使用加法操作符（+）来合并两种已存在的相同类型数组。
        let intA = [Int](repeating: 2, count: 2)
        let intB = [Int](repeating: 1, count: 2)
        
        let intV = intA + intB
        
        for item in intV {
            print(item)
        }
    }
    
    //MARK: count 属性
    
    /// count 属性
    func funcArrayCount() {
        let intsA = [Int](repeating: 2, count: 2)
        let intsB = [Int](repeating: 1, count: 3)
        
        let intsC = intsA + intsB
        
        print("intsA 元素个数为 \(intsA.count)")
        print("intsB 元素个数为 \(intsB.count)")
        print("intsC 元素个数为 \(intsC.count)")
    }
    
    //MARK: isEmpty 属性
    func funcArrayIsEmpty() {
        
        let intsA = [Int](repeating: 2, count: 2)
        let intsB = [Int](repeating: 1, count: 3)
        let intsC = [Int]()
        
        print("intsA.isEmpty = \(intsA.isEmpty)")
        print("intsB.isEmpty = \(intsB.isEmpty)")
        print("intsC.isEmpty = \(intsC.isEmpty)")
    }
}
