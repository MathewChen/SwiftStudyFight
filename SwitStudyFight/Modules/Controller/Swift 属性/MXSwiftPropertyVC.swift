//
//  MXSwiftPropertyVC.swift
//  SwitStudyFight
//
//  Created by mingxing on 2021/3/11.
//

import UIKit

class MXSwiftPropertyVC: MXBaseViewController {

    struct Number {
        var digits: Int
        let pi = 3.1415
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var n = Number.init(digits: 12356)
        n.digits = 67
        
        print("digits = \(n.digits)")
        print("pi = \(n.pi)")
        
        var firstSample = sample()
        
        print(firstSample.no.name)
        
        var result = sample2()
        print(result.middle)
        result.middle = (0.0, 1.0)
        
        print(result.no1)
        print(result.no2)
        
        var movie = film()
        movie.head = "Swift 属性"
        movie.duration = 3.09
        
        print(movie.metaInfo["head"]!)
        print(movie.metaInfo["duration"]!)
        
        let newCounter = Samplepgm()
        newCounter.counter = 100
        newCounter.counter = 800

        var stud1Mark1 = StudMarks()
        var stud1Mark2 = StudMarks()
        
        stud1Mark1.InteralMarks = 98//判断不能超过97.
        print(stud1Mark1.InteralMarks)
        
        stud1Mark2.InteralMarks = 87
        print(stud1Mark2.InteralMarks)
    }

    class sample {
        lazy var no = number()
    }
    class number {
        var name = "Swift 属性学习"
        
    }
    //MARK: 计算属性
    class sample2 {
        var no1 = 0.0, no2 = 0.0
        var length = 300.0, breadth = 150.0
        
        var middle: (Double, Double) {
            get{
                return (length / 2, breadth / 2)
            }
            set(axis) {
                no1 = axis.0 - (length / 2)
                no2 = axis.1 - (breadth / 2)
            }
        }
        
    }
    //MARK: 只读计算属性
    class film {
        /*
         注意：
         必须使用var关键字定义计算属性，包括只读计算属性，因为它们的值不是固定的。let关键字只用来声明常量属性，表示初始化后再也无法修改的值。
         */
        var head = ""
        var duration = 0.0
        var metaInfo: [String:String] {
            return [
                "head": self.head,
                "duration":"\(self.duration)"
            ]
        }
        
    }
    //MARK: 属性观察器
    class Samplepgm {
        var counter : Int = 0 {
            willSet(newTotal) {
                print("计数器：\(newTotal)")
            }
            didSet {
                if counter > oldValue {
                    print("新增数\(counter - oldValue)")
                }
            }
        }
        
    }
    
    /*
     全局变量和局部变量
     计算属性和属性观察器所描述的模式也可以用于全局变量和局部变量。

     局部变量                          全局变量
     在函数、方法或闭包内部定义的变量。     函数、方法、闭包或任何类型之外定义的变量。
     用于存储和检索值。                  用于存储和检索值。
     存储属性用于获取和设置值。           存储属性用于获取和设置值。
     也用于计算属性。                   也用于计算属性。
     */
    //MARK: 类型属性
    //目前这样会报错。我也不知道怎么写。
//    struct Structname {
//       static var storedTypeProperty = " "
//       static var computedTypeProperty: Int {
//          // 这里返回一个 Int 值
//       }
//    }
//
//    enum Enumname {
//       static var storedTypeProperty = " "
//       static var computedTypeProperty: Int {
//          // 这里返回一个 Int 值
//       }
//    }
//
//    class Classname {
//       class var computedTypeProperty: Int {
//          // 这里返回一个 Int 值
//       }
//    }
    
    //MARK: 获取和设置类型属性的值
    
    struct StudMarks {
        static let markCount = 97
        static var totoalCount = 0
        var InteralMarks: Int = 0 {
            didSet {
                if InteralMarks > StudMarks.markCount {
                    InteralMarks = StudMarks.markCount
                }
                
                if InteralMarks > StudMarks.totoalCount {
                    StudMarks.totoalCount = InteralMarks
                }
            }
        }
        
    }
}
