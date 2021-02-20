//
//  MXSwiftEnumVC.swift
//  SwitStudyFight
//
//  Created by mingxing on 2021/2/20.
//

import UIKit

class MXSwiftEnumVC: MXBaseViewController {
    
    /// 定义枚举
    enum DaysofaWeek {
        case Sunday
        case Monday
        case TUESDAY
        case WEDNESDAY
        case THURSDAY
        case FRIDAY
        case Saturday
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        var weekDay = DaysofaWeek.THURSDAY
        
            weekDay = .Sunday
        
        whichDay(weekDay: weekDay)
    }
    
    
    /// 判断那一天
    /// - Parameter day: 某一天
    func whichDay(weekDay day:DaysofaWeek) {
        
        switch day {
        case .Sunday:
            print("星期天")
        case .Monday:
            print("星期一")
        case .TUESDAY:
            print("星期二")
        case .WEDNESDAY:
            print("星期三")
        case .THURSDAY:
            print("星期四")
        case .FRIDAY:
            print("星期五")
        case .Saturday:
            print("星期六")
        }
        
    }


}
