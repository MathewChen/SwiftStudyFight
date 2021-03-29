//
//  MXSwiftDeinitVC.swift
//  SwitStudyFight
//
//  Created by mingxing on 2021/3/29.
//

import UIKit

var counter = 0;

class MXSwiftDeinitVC: MXBaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        /*
         在一个类的实例被释放之前，析构函数被立即调用。
         用关键字deinit来标示析构函数，类似于初始化函数用init来标示。析构函数只适用于类类型。
         */
        var show: BaseClass? = BaseClass()
        print(counter)
        show = nil
        print(counter)
    }
    
    
    
    
    class BaseClass {
        
        init() {
            counter += 1
        }
        
        deinit {
            counter -= 1
        }
    }

    
}
