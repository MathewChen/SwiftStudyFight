//
//  MXSwiftDicVC.swift
//  SwitStudyFight
//
//  Created by mingxing on 2021/2/18.
//

import UIKit

class MXSwiftDicVC: MXBaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        funcDicInit()
        funcDicVisit()
        funcDicUpdateValue()
        funcDicRemove()
        funcDicFor()
    }
    
    //MARK: 创建字典
    
    /// 创建字典
    func funcDicInit() {
        let dicA : [Int: String] = [:]
        
        let dicB = [Int: String]()
        
        let dicC : [Int: String] = [0:"Zero", 1:"One", 2:"Two"]
        
        
    }

    //MARK: 访问字典
    
    /// 访问字典
    func funcDicVisit() {
        
        let someDict : [Int : String] = [1:"One", 2:"Two", 3:"Three"]
        
        let someVar = someDict[1]
        
        print( "key = 1 的值为 \(someVar)" )
        print( "key = 2 的值为 \(someDict[2] ?? "")" )
        print( "key = 3 的值为 \(someDict[3] ?? "")" )
    }
    
    //MARK: 修改字典
    
    /// 修改字典
    func funcDicUpdateValue() {
        
        print("funcDicUpdateValue")
        
        var someDict : [Int : String] = [1:"One", 2:"Two", 3:"Three"]
        
        let oldVal = someDict.updateValue("One 新的值", forKey: 1)
        
        let someVar : String  = someDict[1] ?? ""
        
        print( "key = 1 旧的值 \(oldVal)" )
        print( "key = 1 的值为 \(someVar)" )
        print( "key = 2 的值为 \(someDict[2])" )
        print( "key = 3 的值为 \(someDict[3])" )
    }
    
    //MARK: 移除 Key-Value 对
    
    /// 移除 Key-Value 对
    func funcDicRemove() {
        
        print("funcDicRemove")
        
        var someDict : [Int : String] = [1:"One", 2:"Two", 3:"Three"]
        
        someDict .removeValue(forKey: 2)
        
        print( "key = 1 的值为 \(someDict[1])" )
        print( "key = 2 的值为 \(someDict[2])" )
        print( "key = 3 的值为 \(someDict[3])" )
    }
    
    //MARK: 遍历字典
    
    /// 遍历字典
    func funcDicFor() {
        print("funcDicFor")
        
        let someDict : [Int : String] = [1:"One", 2:"Two", 3:"Three"]
        
        for (key, value) in someDict.enumerated() {
            print("key = \(key), value = \(value)")
        }
    }
    
    //MARK: 字典转换为数组
    
    /// 字典转换为数组
    func funcDicChangeArray() {
        let someDict : [Int : String] = [1:"One", 2:"Two", 3:"Three"]
        
        let dictKeys = [Int](someDict.keys)
        let dictValues = [String](someDict.values)
        
        print("输出字典的建（key）")
        
        for key in dictKeys {
            print("\(key)")
        }
        
        print("输出字典的值（value）")
        
        for value in dictValues {
            print("\(value)")
        }
        
    }
    
    //MARK: count 属性
    
    /// count 属性
    func funcDicCount() {
        let someDict1:[Int:String] = [1:"One", 2:"Two", 3:"Three"]
        let someDict2:[Int:String] = [4:"Four", 5:"Five"]
        
        print("someDict1 含有\(someDict1.count) 个键值对")
        print("someDict2 含有\(someDict2.count) 个键值对")
    }
    
    //MARK: isEmpty 属性
    
    /// isEmpty 属性
    func funcDicIsEmpty() {
        let someDict1:[Int:String] = [1:"One", 2:"Two", 3:"Three"]
        let someDict2:[Int:String] = [4:"Four", 5:"Five"]
        let someDict3:[Int:String] = [:];
        
        print("someDict1 = \(someDict1.isEmpty)")
        print("someDict2 = \(someDict2.isEmpty)")
        print("someDict3 = \(someDict3.isEmpty)")
    }
}
