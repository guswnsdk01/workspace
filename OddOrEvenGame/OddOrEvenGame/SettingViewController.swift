//
//  SettingViewController.swift
//  OddOrEvenGame
//
//  Created by 남현준 on 2022/06/08.
//

import UIKit

protocol SettingDelegate {
    func getBallsCount(ballsCount: Int)
}

class SettingViewController: UIViewController {

    @IBOutlet weak var ballsCountTextField: UITextField!
    
    var settingDelegate: SettingDelegate?
    var defaultBallsCount = 10
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func completeBtnPressed(_ sender: Any) {
        
        guard let ballsStr = self.ballsCountTextField.text, let balls = Int(ballsStr) else{
            self.settingDelegate?.getBallsCount(ballsCount: self.defaultBallsCount)
            self.dismiss(animated: true, completion: nil)
            return
        }
        
        self.settingDelegate?.getBallsCount(ballsCount: balls)
        
        self.dismiss(animated: true, completion: nil)
    }
    
}
