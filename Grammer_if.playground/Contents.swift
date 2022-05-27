import UIKit

var isChecked = false

if isChecked {
    print("체크되어 있습니다.")
}else{
    print("체크되어 있지않습니다.")
}


var time = 12

if time == 9 {
    print("아침식사 시간입니다.")
}else if time == 12 {
    print("점심식사 시간입니다.")
}else if time == 19 {
    print("저녁식사 시간입니다.")
}else {
    print("자유시간입니다.")
}


let color = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
let white = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
let black = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
let green = #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1)

switch color {
case black:
    print("black")
case green:
    print("green")
case white:
    print("white")
default:
    print("default")
}

/* guard */
func getName(name: String?) -> String{
    guard let uName = name else{
        return "이름값이 존재하지 않습니다."
    }
    return uName
}

getName(name: "jun")
getName(name: nil)
