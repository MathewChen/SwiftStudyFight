//
//  MXSwiftOptionalChainingVC.swift
//  SwitStudyFight
//
//  Created by mingxing on 2021/3/30.
//

import UIKit

class MXSwiftOptionalChainingVC: MXBaseViewController {

    //FIXME: 可选链可替代强制解析
    /*
     通过在属性、方法、或下标脚本的可选值后面放一个问号(?)，即可定义一个可选链。
     A:可选链 '?'
     ? 放置于可选值后来调用方法，属性，下标脚本
     当可选为 nil 输出比较友好的错误信息
     
     B:感叹号（!）强制展开方法，属性，下标脚本可选链
     ! 放置于可选值后来调用方法，属性，下标脚本来强制展开值
     当可选为 nil 时强制展开执行错误
     */
    override func viewDidLoad() {
        super.viewDidLoad()

        let john = Persion()
        
        //将导致运行时错误
        //let roomCount = john.residence!.numberOfRooms
        
        // 链接可选residence?属性，如果residence存在则取回numberOfRooms的值
        if let roomCount = john.residence?.numberOfRooms {
            print("John 的房间号为 \(roomCount)。")
        }else {
            print("不能查看房间号")
        }
        
        //开始
        funcA()
        funcB()
        funcC()
        funcD()
        funcE()
        funcF()
    }
    
    func funcA() {
        //FIXME: 为可选链定义模型类
        
        let bob = Persion2()
        if (bob.residence?.printNumberOfRooms()) != nil {
            print("输出房间号")
        }else {
            print("无法输出房间号")
        }
    }
    
    func funcB() {
        //FIXME: 使用可选链调用下标脚本
        
        let bob = Persion2()
        
        if let firstRoomName = bob.residence?[0].name {
            print("第一个房间名 \(firstRoomName).")
        }else {
            print("无法检索到房间")
        }
        
        let jack = Persion2()
        let jacksRecidence = Residence2()
        jacksRecidence.rooms.append(Room(name: "客厅"))
        jacksRecidence.rooms.append(Room(name: "厨房"))
        jack.residence = jacksRecidence
        
        let jacksAddress = Address()
        jacksAddress.buildingName = "The Jack HOUSE"
        jacksAddress.buildingNumber = "767"
        jacksAddress.street = "Queen Street"
        jack.residence?.address = jacksAddress
        
        if let jacksStress = jack.residence?.address?.street {
            print("John 所在的街道是 \(jacksStress)。")
        } else {
            print("无法检索到地址。 ")
        }
    }
    
    func funcC() {
        //FIXME: 通过可选链接调用来访问下标
        let bobo = Persion2()
        let bobosHouse = Residence2()
        bobosHouse.rooms.append(Room(name: "客厅"))
        bobosHouse.rooms.append(Room(name: "厨房"))
        bobo.residence = bobosHouse
        
        if let firstRoomName = bobo.residence?[0].name {
            print("第一个房间名为\(firstRoomName)")
        }else {
            print("无法检索到房间")
        }
    }
    
    func funcD() {
        //FIXME: 访问可选类型的下标
        var testScores = ["Dave": [86, 82, 84], "Bev": [79, 94, 81]]
        testScores["Dave"]?[0] = 91
        testScores["Bev"]?[0] += 1
        testScores["Brian"]?[0] = 72
        // the "Dave" array is now [91, 82, 84] and the "Bev" array is now [80, 94, 81]
    }
    
    func funcE() {
        //FIXME: 连接多层链接
        let pipi = Persion2()
        
        if let pipisStreet = pipi.residence?.address?.street {
            print("Pipi 的地址为 \(pipisStreet)")
        }else {
            print("不能检索地址")
        }
        
        let lucy = Persion3()
        lucy.recidence?[0] = Room(name: "浴室")
        
        let lucyHouse = Recidence3()
        lucyHouse.rooms.append(Room(name: "客厅"))
        lucyHouse.rooms.append(Room(name: "厨房"))
        lucy.recidence = lucyHouse
        
        if let firstRoomName = lucy.recidence?[0].name {
            print("Lucy第一个房间是\(firstRoomName)")
        }else {
            print("无法检索房间")
        }
    }
    
    func funcF() {
        //FIXME: 对返回可选值的函数进行链接
        let kity = Persion2()
        if kity.residence?.printNumberOfRooms() != nil {
            print("指定了房间号")
        }else {
            print("未指定房间号")
        }
    }

    class Persion {
        var residence: Residence?
    }
    
    
    class Residence {
        var numberOfRooms = 1
    }
    
    class Persion2 {
        var residence: Residence2?
    }
    
    class Residence2 {
        var rooms = [Room]()
        var numberOfRooms: Int {
            return rooms.count
        }
        
        subscript(i: Int) ->Room {
            return rooms[i]
        }
        
        func printNumberOfRooms() {
            print("房间号为 \(numberOfRooms)")
        }
        
        var address: Address?
        
    }
    
    class Persion3 {
        var recidence: Recidence3?
        
    }
    
    class Recidence3 {
        var rooms = [Room]()
        var numberOfRooms: Int {
            return rooms.count
        }
        
        subscript(i: Int) -> Room {
            get {
               return rooms[i]
            }
            
            set {
                rooms[i] = newValue
            }
        }
        
        func printNumberOfRooms() {
            print("房间号 \(numberOfRooms)")
        }
        
        var address: Address?
        
    }
    
    class Room {
        var name: String
        init(name: String) {
            self.name = name
        }
    }
    
    class Address {
        var buildingName: String?
        var buildingNumber: String?
        var street: String?
        
        func buildIdentifier() -> String? {
            if buildingName != nil {
                return buildingName
            }else if buildingNumber != nil {
                return buildingNumber
            }else {
                return nil
            }
        }
    }
    
    /*
    Residence 住所;住房;(尤指)宅第，豪宅;居住;定居;(在他国的)居住权，居留许可
    */
}
