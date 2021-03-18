//
//  Counter.swift
//  SwitStudyFight
//
//  Created by mingxing on 2021/3/18.
//

import UIKit

class Counter: NSObject {
    
    var count = 0
    
    func increment() {
        count += 1
    }
    
    func incrementBy(amount: Int) {
        count += amount
    }
    
    func reset() {
        count = 0
    }
    
}

//MARK: 方法的局部参数名称和外部参数名称
class Division: NSObject {
    var count: Int = 0
    func incrementBy(no1: Int, no2: Int) {
        count = no1 / no2
        print(count)
    }
    
    func incrementBy2(first no1: Int, second no2: Int) {
        count = no1 * no2
        print(count)
    }
}

class Caculations: NSObject {
    let a: Int
    let b: Int
    let res: Int
    
    init(a: Int, b:Int) {
        self.a = a
        self.b = b
        res = a + b
        print("Self 内：\(res)")
    }
    
    func tot(c: Int) -> Int {
        return res - c
    }
    
    func result() {
        print("结果为: \(tot(c: 20))")
        print("结果为: \(tot(c: 50))")
    }

}

struct area {
    var length = 1
    var breadth = 1
    
    func area() -> Int {
        return length * breadth
    }
    
    mutating func scaleBy(res: Int) {
        length *= res
        breadth *= res
        
        print(length)
        print(breadth)
    }
}

struct area2 {
    var length = 1
    var breadth = 1
    
    func area() -> Int {
        return length * breadth
    }
    
    mutating func scaleBy(res: Int) {
        self.length *= res
        self.breadth *= res
        print(length)
        print(breadth)
    }
}

//MARK: 类型方法
class Math {
    class func abs(number: Int) -> Int {
        if number < 0 {
            return (-number)
        }else {
            return number
        }
    }
}

struct absno {
    static func abs(number: Int) -> Int {
        if number < 0 {
            return (-number)
        }else {
            return number
        }
    }
}
