import UIKit

/*
 Delegate pattern
 
 - 한 클래스와 다른 클래스의 상호작용을 간단하게 할 수 있다.
 - 프로토콜을 이용해서 클래스 간 요구사항의 전달이 수월해 진다.
 - 클래스 또는 구조체를 상속할 필요가 없기 때문에 가볍게 사용할 수 있다.
 
 => 해야하는 일의 일부분을 위임하고 대신처리해주는 것
 
  remind
    남현준이 풀기 어려운 수학문제가 있다.
    수학천재인 신민아에게 숙제를 풀어달라 한다.
    남현준이 신민아에게 숙제를 풀어달라고 하면 풀어주는 약속
    
    
 */

protocol HomeDelegate {
    func solveMathProblems()
}

class Me: HomeDelegate {
    
    var mina = MathMaster()
    
    func askForHelp(){
        self.mina.delegate = self
        self.mina.didHomework()
    }
    
    func solveMathProblems() {
        print("숙제가 완료되었습니다.")
    }
    
}

class MathMaster {
    var delegate: HomeDelegate?
    
    func didHomework(){
        self.delegate?.solveMathProblems()
    }
}

var jun = Me()
jun.askForHelp()
