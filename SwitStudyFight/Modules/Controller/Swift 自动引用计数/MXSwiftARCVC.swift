//
//  MXSwiftARCVC.swift
//  SwitStudyFight
//
//  Created by mingxing on 2021/3/30.
//

import UIKit

/*
 Swift 自动引用计数（ARC）
 Swift 使用自动引用计数（ARC）这一机制来跟踪和管理应用程序的内存
 通常情况下我们不需要去手动释放内存，因为 ARC 会在类的实例不再被使用时，自动释放其占用的内存。
 但在有些时候我们还是需要在代码中实现内存管理。
 */

class MXSwiftARCVC: MXBaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        funcA()
        funcB()
        funcC()
        funcD()
        funcE()
        funcF()
    }
    
    //FIXME: ARC 实例
    
    func funcA() {
        // 值会被自动初始化为nil，目前还不会引用到Person类的实例
        var reference1: Persion?
        var reference2: Persion?
        var reference3: Persion?
        
        // 创建Persion类的新实例
        reference1 = Persion(name: "Runoob")
        
        //赋值给其他两个变量，该实例又会多出两个强引用
        reference2 = reference1
        reference3 = reference1
        
        //断开第一个强引用
        reference1 = nil
        //断开第二个强引用
        reference2 = nil
        //断开第三个强引用
        reference3 = nil
    }
    
    //FIXME: 类实例之间的循环强引用
    func funcB() {
        // 两个变量都被初始化为nil
        var runoob: Persion2?
        var number73: Apartment2?
        
        //赋值
        runoob = Persion2(name: "Runoob")
        number73 = Apartment2(number: 73)
        
        // 意感叹号是用来展开和访问可选变量 runoob 和 number73 中的实例
        // 循环强引用被创建
        runoob!.aparment = number73
        number73!.tenant = runoob
        
        //断开 runoob 和 number73 变量所持有的强引用是，引用计数器并不会降为0，实例也不会被 ARC 销毁
        //注意，当你把这两个变量设备nil时，没有一个析构函数被调用。
        //强引用循环阻止了Person2和Apartment2类实例的销毁，并在你的应用程序中造成了内存泄漏
        runoob = nil
        number73 = nil
    }
    
    //FIXME: 弱引用实例
    func funcC() {
        var toc: Module?
        var list: SubModule?
        toc = Module(name: "ARC")
        list = SubModule(number: 4)
        toc!.sub = list
        list!.topic = toc
        
        toc = nil
        list = nil
    }
    
    //FIXME: 无主引用实例
    func funcD() {
        var module: Student?
        module = Student(name: "ARC")
        module!.section = Marks(marks: 98, stname: module!)
        module = nil
    }
    
    //FIXME: 闭包引起的循环强引用
    func funcE() {
        // 创建实例并打印信息
        let paragraph: HTMLElement? = HTMLElement(name: "P", text: "HELLO WORLD")
        
        print(paragraph!.asHTML())
    }
    
    //FIXME: 闭包弱引用
    func funcF() {
        // 创建实例并打印信息
        let paragraph: HTMLElement2? = HTMLElement2(name: "F", text: "HELLO WORLD")
        print(paragraph!.asHTML())
    }

    class Persion {
        let name: String
        init(name: String) {
            self.name = name
            print("\(name) 开始初始化")
        }
        
        deinit {
            print("\(name) 被析构")
        }
    }
    
    class Persion2 {
        var name: String
        init(name: String) {
            self.name = name
        }
        var aparment: Apartment2?
        deinit {
            print("\(name) 被析构")
        }
    }
    
    class Apartment2 {
        var number: Int
        init(number: Int) {
            self.number = number
        }
        var tenant: Persion2?
        deinit {
            print("Apartment #\(number) 被析构")
        }
    }
    
    class Module {
        let name: String
        init(name: String) {
            self.name = name
        }
        
        var sub: SubModule?
        
        deinit {
            print("\(name) 主模块")
        }
    }
    
    class SubModule {
        let number: Int
        
        init(number: Int) {
            self.number = number
        }
        
        weak var topic: Module?
        deinit {
            print("子模块 topic 数为 \(number)")
        }
    }
    
    class Student {
        let name: String
        init(name: String) {
            self.name = name
        }
        
        var section: Marks?
        
        deinit {
            print("\(name)")
        }
    }
    
    class Marks {
        let marks: Int
        unowned let stname: Student
        init(marks: Int, stname: Student) {
            self.marks = marks
            self.stname = stname
        }
        
        deinit {
            print("学生的份数为 \(marks)")
        }
    }
    
    class HTMLElement {
        let name: String
        let text: String?
        
        lazy var asHTML: () -> String = {
            if let text = self.text {
                return "<\(self.name)>\(text)</\(self.name)>"
            }else {
                return "<\(self.name) />"
            }
        }
        
        init(name: String, text: String? = nil) {
            self.name = name
            self.text = text
        }
        
        deinit {
            print("\(name) is being deinitialized")
        }
    }
    
    class HTMLElement2 {
        let name: String
        let text: String?
        
        lazy var asHTML: () -> String = {
            [unowned self] in
            if let text = self.text {
                return "<\(self.name)>\(text)</\(self.name)>"
            }else {
                return "<\(self.name) />"
            }
        }
        
        init(name: String, text: String? = nil) {
            self.name = name
            self.text = text
        }
        
        deinit {
            print("\(name) 被析构")
        }
    }
    /*
     reference
     n.
     说到(或写到)的事;提到;谈及;涉及;参考;查询;查阅;(帮助或意见的)征求，征询
     v.
     查阅;参考;给(书等)附参考资料
     
     tenant
     n.
     房客;租户;佃户
     v.
     (作为租赁者)居住，工作
     
     Element
     n.
     要素;基本部分;典型部分;少量;有点;有些;(大团体或社会中的)一组，一群，一伙
     */
}
