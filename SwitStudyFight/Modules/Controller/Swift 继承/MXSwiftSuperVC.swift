//
//  MXSwiftSuperVC.swift
//  SwitStudyFight
//
//  Created by mingxing on 2021/3/26.
//

import UIKit

class MXSwiftSuperVC: MXBaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let stname = "Swift"
        let mark1 = 89
        let mark2 = 98
        let mark3 = 84
        
        let sds = StudentDetails(stName: stname, mark1: mark1, mark2: mark2, mark3: mark3)
        
        print(sds.stName)
        print(sds.mark1)
        print(sds.mark2)
        print(sds.mark3)
        
        let tom = Tom()
        tom.show()
        
        let superClass = SuperClass()
        superClass.show()
        
        let subClass = SubClass()
        subClass.show()
        
        let rect = Rectangle()
        rect.radius = 25.0
        rect.print = 3
        print("Radius \(rect.area)")
        
        let sq = Square()
        sq.radius = 100.0
        print("半径：\(sq.area)")
    }
    //FIXME: 基类
    class StudentDetails {
        var stName: String
        var mark1: Int
        var mark2: Int
        var mark3: Int
        init(stName: String, mark1: Int, mark2: Int, mark3: Int) {
            self.stName = stName
            self.mark1 = mark1
            self.mark2 = mark2
            self.mark3 = mark3
        }
    }
    
    //FIXME: 子类
    class StudDetails {
        var mark1: Int
        var mark2: Int
        
        init(stm1:Int, stm2:Int) {
            mark1 = stm1
            mark2 = stm2
        }
        
        func show() {
            print("Mark1:\(self.mark1), Mark2:\(mark2)")
        }
    }
    
    class Tom: StudDetails {
        init() {
            super.init(stm1: 93, stm2: 89)
        }
    }
    
    //FIXME: 重写（Overriding）
    class SuperClass {
        func show() {
            print("这是超类 SuperClass")
        }
    }
    
    class SubClass: SuperClass {
        override func show() {
            print("这是子类 SubClass")
        }
    }
    
    //FIXME: 重写属性
    class Circle {
        var radius = 12.5
        var area: String {
            return "矩形半径\(radius)"
        }
        
    }
    
    //继承超类 Circle
    class Rectangle: Circle {
        var print = 7
        override var area: String {
            return super.area + "，但现在被重写为\(print)"
        }
    }
    
    //FIXME: 重写属性观察器
    class Square: Rectangle {
        override var radius: Double {
            didSet {
                print = Int(radius/5.0)+1
            }
        }
    }
    
    final class Circle2 {
        final var radius = 12.5
        var area: String {
            return "矩形半径为 \(radius) "
        }
    }
    
    /*
     class Square2: Circle2 {
         override var radius: Double {
             didSet {
                 print = Int(radius/5.0)+1
             }
         }
     }
     */
    
    //由于以上实例使用了 final 关键字不允许重写，所以执行会报错：
}
