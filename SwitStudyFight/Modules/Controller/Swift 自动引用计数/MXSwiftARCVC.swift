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
        var tenant: Persion?
        deinit {
            print("Apartment #\(number) 被析构")
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
     */
}
