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

        print(self.runoob(site: "www.baidu.com"))
        
        print(self.websiteDetail(name: "百度", site: "www.baidu.com"))
        print(self.websiteDetail(name: "Google", site: "www.google.com"))
        
        print(self.siteName())
        
        let bounds = minMax(array: [8, -6, 2, 109, 3, 71])
        print("最小值为 \(bounds.min) ，最大值为 \(bounds.max)")
        
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
}
