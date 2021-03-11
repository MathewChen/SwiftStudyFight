//
//  MXSwiftClassVC.swift
//  SwitStudyFight
//
//  Created by mingxing on 2021/3/11.
//

import UIKit

class MXSwiftClassVC: MXBaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let marks = MarksStruct.init(mark: 56)
        print("Marks is \(marks.mark)")
        
        let spcClass1 = SampleClass(s: "Hello")
        let spcClass2 = SampleClass(s: "Hello")
        
        if spcClass1 === spcClass2 {
            print("引用相同的类实例 \(spcClass1)")
        }
        
        if spcClass1 !== spcClass2 {
            print("引用不相同的类实例 \(spcClass2)")
        }
    }

    class SampleClass: Equatable {
        
        let myProperty: String
        init(s:String) {
            self.myProperty = s
        }
        
        static func == (lhs: MXSwiftClassVC.SampleClass, rhs: MXSwiftClassVC.SampleClass) -> Bool {
            return lhs.myProperty == rhs.myProperty
        }
        
    }
    
    
    
    
    
}

class MarksStruct {
    var mark: Int
    init(mark:Int) {
        self.mark = mark
    }
}

//MARK: 恒等运算符

/*
 恒等运算符    不恒等运算符
 运算符为：===    运算符为：!==
 如果两个常量或者变量引用同一个类实例则返回 true    如果两个常量或者变量引用不同一个类实例则返回 true
 */


