//
//  MXSwiftSubscriptVC.swift
//  SwitStudyFight
//
//  Created by mingxing on 2021/3/26.
//

import UIKit

class MXSwiftSubscriptVC: MXBaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let devision = subExample(decrementer: 100)
        
        print("100 除以 9 等于 \(devision[9])")
        print("100 除以 2 等于 \(devision[2])")
        print("100 除以 3 等于 \(devision[3])")
        print("100 除以 5 等于 \(devision[5])")
        print("100 除以 7 等于 \(devision[7])")
        
        let p = daysOfWeek()
        
        print(p[0])
        print(p[1])
        print(p[2])
        print(p[3])
        
        //用法
        var numberOfLegs = ["spider": 8, "ant":6, "cat": 4]
        numberOfLegs["bird"] = 2
        
        print(numberOfLegs)
        
        var mat = Matrix(rows: 3, columns: 3)
        
        // 通过下标脚本设置值
        mat[0,0] = 1.0
        mat[0,1] = 2.0
        mat[1,0] = 3.0
        mat[1,1] = 4.0
        
        //通过下标脚本获取值
        print("\(mat[0,0])")
        print("\(mat[0,1])")
        print("\(mat[1,0])")
        print("\(mat[1,1])")
    }

    //实例1
    struct subExample {
        let decrementer: Int
        subscript(index: Int) -> Int {
            return decrementer / index
        }
    }
    //实例2
    class daysOfWeek {
        private var days = ["Sunday","Monday","Tuesday","Wednesday","Thursday","Friday","Saturday"]
        
        subscript(index: Int) -> String {
            get {
                //声明下标脚本的值
                return days[index]
            }
            
            set(newValue) {
                //执行赋值操作
                self.days[index] = newValue
            }
        }
    }
    
    //下标脚本选项
    struct Matrix {
        let rows: Int, columns: Int
        var print: [Double]
        init(rows: Int, columns: Int) {
            self.rows = rows
            self.columns = columns
            print = Array(repeating: 0.0, count: rows * columns)
        }
        subscript(row: Int, column: Int) -> Double {
            get {
                return print[(row * columns) + column]
            }
            set {
                print[(row * columns) + column] = newValue
            }
        }
    }
}
