//
//  MXSwiftStructVC.swift
//  SwitStudyFight
//
//  Created by mingxing on 2021/3/10.
//

import UIKit

class MXSwiftStructVC: MXBaseViewController {

    struct MarksStruct {
        var mark1: Int
        var mark2: Int
        var mark3: Int
        
        init(mark1: Int,mark2: Int,mark3: Int) {
            self.mark1 = mark1
            self.mark2 = mark2
            self.mark3 = mark3
        }
    }
    
    struct StudentStruct {
        var name: String
        var sex: String
        var age: Int
        var mathMark: Int
        var englishMark: Int
        
        init(name: String,sex: String,age: Int,mathMark: Int,englishMark: Int) {
            self.name = name
            self.sex = sex
            self.age = age
            self.mathMark = mathMark
            self.englishMark = englishMark
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        structDemo()
    }

    func structDemo() {
        
        let pepleMarks = MarksStruct(mark1: 89, mark2: 95, mark3: 84)
        
        print("Mark1 是 \(pepleMarks.mark1)")
        print("Mark2 是 \(pepleMarks.mark2)")
        print("Mark3 是 \(pepleMarks.mark3)")
        
        let studentDetail = StudentStruct(name: "Matthew", sex: "male", age: 18, mathMark: 95, englishMark: 85)
        
        var studentBDetail = studentDetail
        studentBDetail.name = "BBoy"
        studentBDetail.sex = "male"
        studentBDetail.age = 17
        studentBDetail.mathMark = 99
        studentBDetail.englishMark = 95
        
        print("学生：\(studentDetail.name) 性别：\(studentDetail.sex) 年龄：\(studentDetail.age) 数学成绩：\(studentDetail.mathMark) 英语成绩：\(studentDetail.englishMark)")
        
        print("学生：\(studentBDetail.name) 性别：\(studentBDetail.sex) 年龄：\(studentBDetail.age) 数学成绩：\(studentBDetail.mathMark) 英语成绩：\(studentBDetail.englishMark)")
    }
}
