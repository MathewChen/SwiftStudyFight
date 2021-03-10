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
    
    enum Student {
        case Name(String)
        case Mark(Int,Int,Int)
    }
    
    
    enum Mouth:Int {
        case January = 1, February, March, April, May, June, July, August, September, October, November, December
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        var weekDay = DaysofaWeek.THURSDAY
        
            weekDay = .WEDNESDAY
        
        whichDay(weekDay: weekDay)
        studentDemo()
        getMouth()
        lplName(teamName: .RNG)
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

    func studentDemo() {
        let studentName = Student.Name("Matthew")
        let studentMark = Student.Mark(59, 50, 50)
        
        switch studentName {
        case .Name(let studName):
            print("学生的名字是：\(studName)")
        case .Mark(let Mark1, let Mark2, let Mark3):
            print("学生的成绩是：\(Mark1),\(Mark2),\(Mark3)")
        }
    }
    
    func getMouth() {
        let yearMouth = Mouth.May.rawValue
        
        print("数字的月份是：\(yearMouth)")
    }
    
    enum LolTeamName {
        case IG
        case FPX
        case RNG
        case EDG
        case SN
        case LGD
    }
    
    func lplName(teamName:LolTeamName) {
        switch teamName {
        case .IG:
            print("这个队是IG")
        case .FPX:
            print("这个队是FPX")
        case .RNG:
            print("这个队是RNG")
        case .EDG:
            print("这个队是EDG")
        case .SN:
            print("这个队是SN")
        case .LGD:
            print("这个队是LGD")
        default:
            print("这个队暂时没有收录")
        }
    }
}
