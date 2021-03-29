//
//  MXSwiftInitVC.swift
//  SwitStudyFight
//
//  Created by mingxing on 2021/3/26.
//

import UIKit

class MXSwiftInitVC: MXBaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        //FIXME: 实例
        let area = rectangle()
        print("矩形面积为\(area.length * area.breadth)")
        
        let area2 = rectangle2()
        print("矩形面积为\(area2.length * area2.breadth)")
        
        let ar = Rectangle(fromLength: 6, fromBreadth: 12)
        print("面积为：\(ar.area)")
        
        let are = Rectangle(fromLeng: 36, fromBread: 12)
        print("面积为: \(are.area)")
        
        // 创建一个新的Color实例，通过三种颜色的外部参数名来传值，并调用构造器
        let magenta = Color(red: 1.0, green: 0.0, blue: 1.0)
        
        print("red 的值为： \(magenta.red)")
        print("green 的值为： \(magenta.green)")
        print("blue 的值为： \(magenta.blue)")
        
        // 创建一个新的Color实例，通过三种颜色的外部参数名来传值，并调用构造器
        let halfGary = Color(write: 0.5)
        
        print("red 的值为： \(halfGary.red)")
        print("green 的值为： \(halfGary.green)")
        print("blue 的值为： \(halfGary.blue)")
        
        //调用不提供外部名字
        let rectarea = Rectangle3(180)
        print("面积为： \(rectarea.length)")
        
        //调用不提供外部名字
        let rearea = Rectangle3(370)
        print("面积为： \(rearea.length)")
        
        //调用不提供外部名字
        let recarea = Rectangle3(110)
        print("面积为： \(recarea.length)")
        
        let item = ShoppingListItem()
        
        print("名字为：\(item.name)")
        print("数理为：\(item.quantity)")
        print("是否付款：\(item.purchased)")
        
        let area3 = Rectangle5(length: 24.0, breadth: 32.0)
        print("矩形的面积：\(area3.length)")
        print("矩形的面积：\(area3.breadth)")
        
        // origin和size属性都使用定义时的默认值Point(x: 0.0, y: 0.0)和Size(width: 0.0, height: 0.0)
        let basicRect = Rect()
        print("Size 结构体初始值: \(basicRect.size.width) \(basicRect.size.height)")
        print("Rect 结构体初始值: \(basicRect.origin.x) \(basicRect.origin.y)")
        
        // 将origin和size的参数赋值给对应的存储性属性
        let originRect = Rect(origin: Point(x: 2.0, y: 2.0), size: Size(width: 5.0, height: 5.0))
        print("Size 结构体初始值: \(originRect.size.width) \(originRect.size.height)")
        print("Rect 结构体初始值: \(originRect.origin.x) \(originRect.origin.y)")
        
        // 先通过center和size的值计算出origin的坐标。
        // 然后再调用（或代理给）init(orgin:size:)构造器来将新的origin和size值赋值到对应的属性中
        let centerRect = Rect(center: Point(x: 4.0, y: 4.0), size: Size(width: 3.0, height: 3.0))
        print("Size 结构体初始值：\(centerRect.size.width), \(centerRect.size.height)")
        print("Rect 结构体初始值：\(centerRect.origin.x), \(centerRect.origin.x)")
        
        let res = mainClass(no1: 10)
        let res2 = subClass(no1: 10, no2: 20)
        print("res no1 为 : \(res.no1)")
        print("res2 no1 为 : \(res2.no1)")
        print("res2 no2 为 : \(res2.no2)")
        
        let res3 = mainClass2(no1: 20)
        let res4 = subClass2(no1: 30, no2: 50)
        print("res3 no1 为 : \(res3.no1)")
        print("res4 no1 为 : \(res4.no1)")
        print("res4 no2 为 : \(res4.no2)")
        
        let rectangle = SuperClass()
        print("矩形: \(rectangle.description)")
        
        let rectangle2 = SubClass()
        print("五角形: \(rectangle2.description)")
        
        let main = MainClass2(name: "模型")
        print("MainClass2 名字为：\(main.name)")
        
        let main2 = MainClass2()
        print("MainClass2 名字为：\(main2.name)")
        
        let sub = SubClass2(name: "Runoob")
        print("MainClass 名字为: \(sub.name)")

        let sub2 = SubClass2(name: "Runoob", count: 3)
        print("count 变量: \(sub2.count)")
        
        //通过该可失败构造器来构建一个Animal的对象，并检查其构建过程是否成功
        // someCreature 的类型是 Animal? 而不是 Animal
        let someCreature = Animal(species: "长颈鹿")

        // 打印 "动物初始化为长颈鹿"
        if let giraffe = someCreature {
            print("动物初始化为\(giraffe.species)")
        }
        
        let fahrenheitUnit = TemperatureUnit(symbol: "F")
        if fahrenheitUnit != nil {
            print("这是一个已定义的温度单位，所以初始化成功。")
        }
        
        let unknownUnit = TemperatureUnit(symbol: "Q")
        if unknownUnit == nil {
            print("这是一个未定义的温度单位，所以初始化失败")
        }
        
        let plName = Planet(name: "Mercury")
        print("行星的名字是: \(plName.name)")

        let noplName = Planet()
        print("没有这个名字的行星: \(noplName.name)")
        
        let stmark = StudRecord(stname: "Runoob")
        if let name = stmark {
            print("指定了学生\(name.stname)")
        }

        let blankname = StudRecord(stname: "")
        if blankname == nil {
            print("学生名为空")
        }
    }

    struct rectangle {
        var length: Double
        var breadth: Double
        init() {
            length = 6
            breadth = 12
        }
    }
    //FIXME: 默认属性值
    struct rectangle2 {
        var length = 6
        var breadth = 12
    }
    
    //FIXME: 构造参数
    struct Rectangle {
        var length: Double
        var breadth: Double
        var area: Double
        
        init(fromLength length:Double, fromBreadth breadth: Double) {
            self.length = length
            self.breadth = breadth
            area = length * breadth
        }
        
        init(fromLeng leng:Double, fromBread bread: Double) {
            self.length = leng
            self.breadth = bread
            area = leng * bread
        }
    }
    
    //FIXME: 内部和外部参数名
    struct Color {
        let red, green, blue: Double
        init(red: Double, green: Double, blue: Double) {
            self.red = red
            self.green = green
            self.blue = blue
        }
        
        init(write: Double) {
            self.red = write
            self.green = write
            self.blue = write
        }
    }
    
    //FIXME: 没有外部名称和参数
    //如果你不希望为构造器的某个参数提供外部名字，你可以使用下划线_来显示描述它的外部名。
    struct Rectangle3 {
        var length: Double
        
        init(frombreadth breadth: Double) {
            length = breadth * 10
        }
        
        init(frombre bre: Double) {
            length = bre * 30
        }
        
        //不提供外部名字
        init(_ area: Double) {
            length = area
        }
    }
    
    //FIXME: 可选属性类型
    //如果你定制的类型包含一个逻辑上允许取值为空的存储型属性，你都需要将它定义为可选类型optional type（可选属性类型）。当存储属性声明为可选时，将自动初始化为空 nil。
    
    //FIXME:构造过程中修改常量属性
    /*
     只要在构造过程结束前常量的值能确定，你可以在构造过程中的任意时间点修改常量属性的值。
     对某个类实例来说，它的常量属性只能在定义它的类的构造过程中修改；不能在子类中修改。
     尽管 length 属性现在是常量，我们仍然可以在其类的构造器中设置它的值：
     */
    struct Rectangle4 {
        var length: Double?
        
        init(frombreadth breadth: Double) {
            length = breadth * 10
        }
        
        init(frombre bre: Double) {
            length = bre * 30
        }
        
        //不提供外部名字
        init(_ area: Double) {
            length = area
        }
    }
    
    //FIXME: 默认构造器
    class ShoppingListItem {
        var name: String?
        var quantity = 1
        var purchased = false
    }

    //FIXME: 结构体的逐一成员构造器
    struct Rectangle5 {
        var length = 100.0
        var breadth = 200.0
    }
    
    //FIXME: 值类型的构造器代理
    struct Size {
        var width = 0.0, height = 0.0
    }
    struct Point {
        var x = 0.0, y = 0.0
    }
    
    struct Rect {
        var origin = Point()
        var size = Size()
        
        init() {}
        init(origin: Point, size: Size) {
            self.origin = origin
            self.size = size
        }
        init(center: Point, size: Size) {
            let originX = center.x - (size.width / 2)
            let originY = center.y - (size.height / 2)
            self.init(origin: Point(x: originX, y: originY), size: size)
        }
    }
    
    //FIXME: 类的继承和构造过程
    
    /*
     A.指定构造器
     类中最主要的构造器
     初始化类中提供的所有属性，并根据父类链往上调用父类的构造器来实现父类的初始化。
     每一个类都必须拥有至少一个指定构造器
     Init(parameters) {
         statements
     }
     
     B.便利构造器
     类中比较次要的、辅助型的构造器
     可以定义便利构造器来调用同一个类中的指定构造器，并为其参数提供默认值。你也可以定义便利构造器来创建一个特殊用途或特定输入的实例。
     只在必要的时候为类提供便利构造器
     convenience init(parameters) {
           statements
     }
     */
    ///A.指定构造器
    class mainClass {
        var no1 : Int   //局部存储变量
        init(no1 : Int) {
            self.no1 = no1  //初始化
        }
    }
    
    class subClass: mainClass {
        var no2 : Int   // 新的子类存储变量
        init(no1 : Int, no2 : Int) {
            self.no2 = no2  //初始化
            super.init(no1: no1)    //初始化超类
        }
    }
    
    ///B.便利构造器
    class mainClass2 {
        var no1 : Int   //局部存储变量
        init(no1 : Int) {
            self.no1 = no1  //初始化
        }
    }
    
    class subClass2: mainClass2 {
        var no2 : Int
        
        init(no1 : Int, no2 : Int) {
            self.no2 = no2
            super.init(no1: no1)
        }
        
        override convenience init(no1: Int) {
            self.init(no1:no1, no2:0)
        }
    }
    
    //FIXME: 构造器的继承和重载
    
    /*
     Swift 中的子类不会默认继承父类的构造器。
     父类的构造器仅在确定和安全的情况下被继承。
     当你重写一个父类指定构造器时，你需要写override修饰符。
     */
    
    class SuperClass {
        var corners = 4
        var description: String {
            return "\(corners) 边"
        }
    }
    
    class SubClass: SuperClass {
        override init() {//重载构造器
            super.init()
            corners = 5
        }
    }
    
    //FIXME: 制定构造器和便利构造器实例
    class MainClass2 {
        var name : String
        
        init(name: String) {
            self.name = name
        }
        
        convenience init() {
            self.init(name: "[匿名]")
        }
    }
    
    class SubClass2: MainClass2 {
        var count: Int
        init(name: String, count: Int) {
            self.count = count
            super.init(name: name)
        }
        
        override convenience init(name: String) {
            self.init(name: name, count: 1)
        }
    }
    
    //FIXME: 类的可失败构造器
    //其语法为在init关键字后面加添问号(init?)
    class Animal {
        let species: String
        init?(species: String) {
            if species.isEmpty {return nil}
            self.species = species
        }
        
    }
    
    //FIXME: 枚举类型的可失败构造器
    enum TemperatureUnit {
        case Kelvin, Celsius, Fahrenheit
        init?(symbol: Character) {
            switch symbol {
            case "K":
                self = .Kelvin
            case "C":
                self = .Celsius
            case "F":
                self = .Fahrenheit
            default:
                return nil
            }
        }
    }
    
    //FIXME: 覆盖一个可失败构造器
    class Planet {
        var name: String
        
        init(name: String) {
            self.name = name
        }
        
        convenience init() {
            self.init(name: "[No Planets]")
        }
    }

    class planets: Planet {
        var count: Int
        
        init(name: String, count: Int) {
            self.count = count
            super.init(name: name)
        }
        
        override convenience init(name: String) {
            self.init(name: name, count: 1)
        }
    }
    
    //FIXME: 可失败构造器 init!
    struct StudRecord {
        let stname: String
        
        init!(stname: String) {
            if stname.isEmpty {return nil }
            self.stname = stname
        }
    }

}
