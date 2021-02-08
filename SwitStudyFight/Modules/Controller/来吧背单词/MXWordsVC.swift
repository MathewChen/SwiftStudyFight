//
//  MXWordsVC.swift
//  SwitStudyFight
//
//  Created by mingxing on 2021/2/8.
//

import UIKit

class MXWordsVC: MXBaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        //FIXME: 与声明有关的关键字
        
        //1:class
        let classStr = "class"
        print(classStr)
        
        //2:deinitStr
        let deinitStr = "deinit"
        print(deinitStr)
        
        //3:enumStr
        let enumStr = "enum"
        print(enumStr)
        
        //4:extensionStr
        let extensionStr = "extension"
        print(extensionStr)
        
        //5:func
        let funcStr = "func"
        print(funcStr)
        
        //6:import
        let importStr = "import"
        print(importStr)
        
        //7:init
        let initStr = "init"
        print(initStr)
        
        //8:internal
        let internalStr = "internal"
        print(internalStr)
        
        //9:let
        let letStr = "let"
        print(letStr)
        
        //10:operator
        let operatorStr = "operator"
        print(operatorStr)
        
        //11:private
        let privateStr = "private"
        print(privateStr)
        
        //12:protocol
        let protocolStr = "protocol"
        print(protocolStr)
        
        //13:public
        let publicStr = "public"
        print(publicStr)
        
        //14:static
        let staticStr = "static"
        print(staticStr)
        
        //15:struct
        let structStr = "struct"
        print(structStr)
        
        //16:subscript
        let subscriptStr = "subscript"
        print(subscriptStr)
        
        //17:typealias
        let typealiasStr = "typealias"
        print(typealiasStr)
        
        //18:var
        let varStr = "var"
        print(varStr)
        
        //FIXME: 与语句有关的关键字
        //19:break
        let breakStr = "break"
        print(breakStr)
        
        //20:case
        let caseStr = "case"
        print(caseStr)
        
        //21:continue
        let continueStr = "continue"
        print(continueStr)
        
        //22:default
        let defaultStr = "default"
        print(defaultStr)
        
        //23:do
        let doStr = "do"
        print(doStr)
        
        //24:else
        let elseStr = "else"
        print(elseStr)
        
        //25:fallthrough
        let fallthroughStr = "fallthrough"
        print(fallthroughStr)
        
        //26:for
        let forStr = "for"
        print(forStr)
        
        //27:if
        let ifStr = "if"
        print(ifStr)
        
        //28:in
        let inStr = "in"
        print(inStr)
        
        //29:return
        let returnStr = "return"
        print(returnStr)
        
        //30:switch
        let switchStr = "switch"
        print(switchStr)
        
        //31:where
        let whereStr = "where"
        print(whereStr)
        
        //32:while
        let whileStr = "while"
        print(whileStr)
        
        //FIXME: 表达式和类型关键字
        //33:as
        let asStr = "as"
        print(asStr)
        
        //34:dynamicType
        let dynamicTypeStr = "dynamicType"
        print(dynamicTypeStr)
        
        //35:false
        let falseStr = "false"
        print(falseStr)
        
        //36:is
        let isStr = "is"
        print(isStr)
        
        //37:nil
        let nilStr = "nil"
        print(nilStr)
        
        //38:self
        let selfStr = "self"
        print(selfStr)
        
        //39:Self
        let SelfStr = "Self"
        print(SelfStr)
        
        //40:super
        let superStr = "super"
        print(superStr)
        
        //41:true
        let trueStr = "true"
        print(trueStr)
        
        //42:_COLUMN
        let _COLUMNStr = "_COLUMN"
        print(_COLUMNStr)
        
        //43:_FILE_
        let _FILE_Str = "_FILE_"
        print(_FILE_Str)
        
        //44:_FUNCTION_
        let _FUNCTION_Str = "_FUNCTION_"
        print(_FUNCTION_Str)
        
        //45:_LINE_
        let _LINE_Str = "_LINE_"
        print(_LINE_Str)
        
        //FIXME: 在特定上下文中使用的关键字
        
        //46:associativity
        let associativityStr = "associativity"
        print(associativityStr)
        
        //47:convenience
        let convenienceStr = "convenience"
        print(convenienceStr)
        
        //48:dynamic
        let dynamicStr = "dynamic"
        print(dynamicStr)
        
        //49:didSet
        let didSetStr = "didSet"
        print(didSetStr)
        
        //50:final
        let finalStr = "final"
        print(finalStr)
        
        //51:infix
        let infixStr = "infix"
        print(infixStr)
        
        //52:inout
        let inoutStr = "inout"
        print(inoutStr)
        
        //53:lazy
        let lazyStr = "lazy"
        print(lazyStr)
        
        //54:left
        let leftStr = "left"
        print(leftStr)
        
        //55:mutating
        let mutatingStr = "mutating"
        print(mutatingStr)
        
        //56:none
        let noneStr = "none"
        print(noneStr)
        
        //57:nonmutation
        let nonmutationStr = "nonmutation"
        print(nonmutationStr)
        
        //58:optional
        let optionalStr = "optional"
        print(optionalStr)
        
        //59:overiide
        let overiideStr = "overiide"
        print(overiideStr)
        
        //60:postfix
        let postfixStr = "postfix"
        print(postfixStr)
        
        //61:precedence
        let precedenceStr = "precedence"
        print(precedenceStr)
        
        //62:refix
        let refixStr = "refix"
        print(refixStr)
        
        //63:Protocol
        let ProtocolStr = "Protocol"
        print(ProtocolStr)
        
        //64:required
        let requiredStr = "required"
        print(requiredStr)
        
        //65:right
        let rightStr = "right"
        print(rightStr)
        
        //66:set
        let setStr = "set"
        print(setStr)
        
        //67:Type
        let TypeStr = "Type"
        print(TypeStr)
        
        //68:unowned
        let unownedStr = "unowned"
        print(unownedStr)
        
        //69:weak
        let weakStr = "weak"
        print(weakStr)
        
        //70:willSet
        let willSetStr = "willSet"
        print(willSetStr)

        //FIXME: 字面量涉及到单词
        
        //71:literal
        let literal = "literal"
        print(literal)
        
        //72:decimal
        let decimal = "decimal"
        print(decimal)
        
        //73:binary
        let binary = "binary"
        print(binary)
        
        //74:octal
        let octal = "octal"
        print(octal)
        
        //75:hexadecimal
        let hexadecimal = "hexadecimal adj. 十六进制的"
        print(hexadecimal)
        
        //76:exponent
        let exponent = "exponent"
        print(exponent)
        
        //77:characters
        let characters = "characters"
        print(characters)
        
        //FIXME: 运算符涉及到的单词
        //78:operator
        let compare = "compare"
        print(compare)
        
        //79:logic
        let logic = "logic"
        print(logic)
        
        //80:bitwise
        let bitwise = "bitwise"
        print(bitwise)
        
        //81:assignment
        let assignment = "assignment"
        print(assignment)
        
        //82:interval
        let interval = "interval"
        print(interval)
        
    }
    
    

}
