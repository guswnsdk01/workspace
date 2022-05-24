import UIKit
import Foundation

var greeting = "Hello, playground"

var name: String = "Nam"
var age: Int = 28

name
name = "남현준"

age
age = 27

let one: Int = 1
let two: Int = 2

func greeting(name:String)->String{
    return "nice to meet you, \(name)"
}

greeting(name: "Nam")

func introduce(name:String, age:Int) -> String{
    return "Hi my name is \(name). i'm\(age)."
}

introduce(name: name, age: age)

func add(a:Int, b:Int)->Int{
    return a*b
}

add(a: 3, b: 2)
