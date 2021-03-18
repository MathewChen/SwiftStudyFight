//
//  MXSwiftMethodVC.swift
//  SwitStudyFight
//
//  Created by mingxing on 2021/3/18.
//

import UIKit

class MXSwiftMethodVC: MXBaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        //初始计数值0
        let counter = Counter()

        //计数值是1
        counter.increment()
        print(counter.count)
        
        //计数值是6
        counter.incrementBy(amount: 5)
        print(counter.count)
        
        //计数器是0
        counter.reset()
        print(counter.count)
        
        let counter2 = Division()
        counter2.incrementBy(no1: 1800, no2: 3)
        counter2.incrementBy(no1: 1600, no2: 5)
        counter2.incrementBy(no1: 11000, no2: 3)
        
        counter2.incrementBy2(first: 800, second: 3)
        counter2.incrementBy2(first: 100, second: 5)
        counter2.incrementBy2(first: 15000, second: 3)
        
        let pri = Caculations(a: 600, b: 300)
        let sum = Caculations(a: 1200, b: 300)
        
        pri.result()
        sum.result()
        
        var val = area(length: 3, breadth: 5)
        val.scaleBy(res: 3)
        val.scaleBy(res: 30)
        val.scaleBy(res: 300)
        
        var val2 = area2(length: 3, breadth: 5)
        val2.scaleBy(res: 13)
        
        let no = Math.abs(number: -35)
        let num = absno.abs(number: -5)
        
        print(no)
        print(num)
    }
    

    

    
}

