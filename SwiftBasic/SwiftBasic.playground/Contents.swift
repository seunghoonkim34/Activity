//: A UIKit based Playground for presenting user interface
  
import UIKit
import PlaygroundSupport
import Foundation

//상수변수로 클래스만들기

class Person{

    let type : Int  = 10
    let name : String = "kimseunghoon"
    let period : Float = 19.05
}

let yagom : Person =  Person()


//총변수 = 타입변수 + 타입변수(할당)
//lnt(숫자형할당)
let sum : Int
let FirstList : Int = 10
let SecondList : Int = 30

sum = FirstList + SecondList
print(sum)

//String(문자형할당)

var Str : String
var Str2 : String
var Str3 : String

Str = "Hi"
Str2 = "HELLO"
Str3 =  "WORLD"

var sum2 = print("\(Str + Str2 + Str3) My name is SeunghoonKim")
print(sum2)

// boolean type (부울타입 뱐수 응용하기)

var BooleanValue : Bool = false
BooleanValue = true

// double type (더블타입 뱐수 응용하기)

var SomeFloat : Float = 3.14
SomeFloat = 3
print(SomeFloat)

var SomeInt : Double = 3.14
SomeInt =  3
print(SomeInt)


var SomeString : String  = "hi"
SomeString = SomeString  + "Welcome to Xcode"
print(SomeString)

//Any, AnyObject 응용
//anyobject에는 아무거나 다들어올수있음!

var AnyTypes : Any = "아무거나"
AnyTypes = 200
AnyTypes = 3.14
print(AnyTypes)

//클래스 속성변수정의
class ValueClass{
    let name : String = "SeunghoonKim"
    let age : String = "30"
    let gender : String = "Man"
}
//Anyobject 값 정의
var ValueT : AnyObject = ValueClass()

var ArrayList = Array<Int>(1...10)
print(ArrayList)


//빈 딕셔너리 생성
var Dictionary : Dictionary < String , Any > = [String : Any]()
Dictionary["SomeValue"] = "Apple"
Dictionary["SomeValue3"] = "Pare"
Dictionary["SomeValue3"] = "banana"
Dictionary["SomeValue3"] =  "errorcode"
print(Dictionary)

//dictionary 에서 nil 값 작용
Dictionary.removeValue(forKey : "SomeValue")
Dictionary["SomeValue"] = nil
print(Dictionary)

//ㅠㅣ







    




































 










        
        
        
  
        

