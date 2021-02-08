//
//  MXSwiftOperatorVC.swift
//  SwitStudyFight
//
//  Created by mingxing on 2021/2/8.
//

import UIKit

class MXSwiftOperatorVC: MXBaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.suanshuOperator()
        self.compareOperator()
        self.logicOperator()
        self.bitwiseOperator()
        self.assignmentOperation()
        self.intervalOperator()
        self.otherOperator()
        
    }

    
    //FIXME: 算数运算符
    
    /// 算数运算符
    func suanshuOperator() {
        
        var A = 10
        var B = 20
        
        print("A + B 结果为：\(A + B)")
        print("A - B 结果为：\(A - B)")
        print("A * B 结果为：\(A * B)")
        print("B / A 结果为：\(A / B)")
        
        A += 1 //类似A++
        print("A += 1 后 A 的值为 \(A)")
        
        B -= 1 //类似B--
        print("B -= 1 后 B 的值为 \(B)")
    }
    
    
    //FIXME: 比较运算符
    
    /// 比较运算符
    func compareOperator() {
        let A = 10
        let B = 20
        
        print("A == B 结果为：\(A == B)")
        print("A != B 结果为：\(A != B)")
        print("A > B 结果为：\(A > B)")
        print("A < B 结果为：\(A < B)")
        print("A >= B 结果为：\(A >= B)")
        print("A <= B 结果为：\(A <= B)")
        
    }
    
    
    //FIXME: 逻辑运算符
    
    /// 逻辑运算符
    func logicOperator() {
        let A = true
        let B = false
        
        //  &&    逻辑与。如果运算符两侧都为 TRUE 则为 TRUE。    (A && B) 为 false。
        //  ||    逻辑或。 如果运算符两侧至少有一个为 TRUE 则为 TRUE。    (A || B) 为 true。
        //  !    逻辑非。布尔值取反，使得true变false，false变true。    !(A && B) 为 true。
        print("A && B 结果为：\(A && B)")
        print("A || B 结果为：\(A || B)")
        print("!A 结果为：\(!A)")
        print("!B 结果为：\(!B)")
    }
    
    
    //FIXME: 位运算符
    
    /// 位运算符
    func bitwiseOperator() {
        /*
         位运算符用来对二进制位进行操作，~,&,|,^分别为取反，按位与与，按位与或，按位与异或运算，如下表实例
         p    q    p & q    p | q    p ^ q
         0    0      0        0        0
         0    1      0        1        1
         1    1      1        1        0
         1    0      0        1        1
         */
        
        let A = 60  //00111100
        let B = 13  //00001101
        
        print("A & B 结果为：\(A & B)") //计算12
        print("A | B 结果为：\(A | B)") //计算61
        print("A ^ B 结果为：\(A ^ B)") //计算49
        print("~A 结果为：\(~A)") //计算00111100 ~ 11000011 结果：-61
        print("A>>1 结果为：\(A >> 1)")//00111100 >>1 00011110 = 30
        print("A<<2 结果为：\(A << 2)")//00111100 <<2 11110000 = 240
    }
    
    
    //FIXME: 赋值运算
    
    /// 赋值运算
    func assignmentOperation() {
        let A = 10
        let B = 20
        var C = 100
        
        C = A + B
        print("C 结果为：\(C)")
        
        C += A
        print("C 结果为：\(C)")
        
        C -= A
        print("C 结果为：\(C)")
        
        C *= A
        print("C 结果为：\(C)")
        
        C /= A
        print("C 结果为：\(C)")
        
        C %= A
        
        print("C 结果为：\(C)")
        
        C = 100 //1100100
        C <<= A //左移10位 1100100 变为 //11001000000000000 = 102400
        print("C 结果为：\(C)")
        
        C = 100 //1100100
        C >>= A
        print("C 结果为：\(C)")
        
        C = 100
        C |= A
        print("C 结果为：\(C)")
    }
    
    
    //FIXME: 区间运算符
    
    /// 区间运算符
    func intervalOperator() {
        print("闭区间运算符：")
        for index in 1...5 {
            print("\(index) * 5 = \(index * 5)")
        }
        
        print("半开区间运算符：")
        for index in 1..<5 {
            print("\(index) * 5 = \(index * 5)")
        }
    }
    
    
    //FIXME: 其他运算符
    
    /// 其他运算符
    func otherOperator() {
        let A = 1
        let B = 2
        let C = true
        let D = false
        
        print("-A 的值为：\(-A)")
        print("A + B 的值为：\(A + B)")
        print("三元运算：\(C ? A : B)")
        print("三元运算：\(D ? A : B)")
    }
    
    
    //FIXME: 运算符优先级
    
    /// 运算符优先级
    func operatorPriority() {
        /*
         指针最优，单目运算优于双目运算。如正负号。
         先乘除（模），后加减。
         先算术运算，后移位运算，最后位运算。请特别注意：1 << 3 + 2 & 7 等价于 (1 << (3 + 2))&7
         逻辑运算最后计算
         
         位运算符    >> &<< &>> >>
         乘法运算符    &* % & * /
         加法运算符    | &+ &- + -  ^
         区间运算符    ..< ...
         类型转换运算符    is as
         nil 的聚合运算    ??
         比较运算符    != > < >= <= === ==
         逻辑与运算符    &&
         逻辑或运算符    ||
         波浪箭头    ~>
         三元运算符    ?:
         箭头函数    ( )
         赋值运算符    |= %= /= &<<= &>>= &= *= >>= <<= ^= += -=
         */
        
        var A = 0

        A = 2 + 3 * 4 % 5
        print("A 的值为：\(A)")
    }
}
