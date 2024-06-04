//
//  ViewController.swift
//  CounterApp
//
//  Created by kimjimin on 6/4/24.
//

import UIKit

class ViewController: UIViewController {
    
    // 나타날 숫자를 담을 그릇
    var number: Int = 0
    
    // 숫자가 나타날 라벨을 코드가 인식할 이름
    @IBOutlet weak var numberLabel: UILabel!
    
    // 처음 앱이 시작되면 처리할 코드
    override func viewDidLoad() {
        super.viewDidLoad()
        
        numberLabel.text = "\(number)"
    }
    
    func calculate(_ num: Int) {
        number += num
        if num == 0 {
            number = 0
        } else if num < 0 {
            number = max(number, 0)
        }
        numberLabel.text = String(number)
    }
    
    
    @IBAction func plusOne(_ sender: Any) {
        
        // "Plus One" 버튼을 눌렀을 때 적용될 코드
        calculate(1)
    }
    
    @IBAction func plusFive(_ sender: Any) {
        calculate(5)
    }
    
    @IBAction func plusTen(_ sender: Any) {
        calculate(10)
    }
    
    @IBAction func minusOne(_ sender: Any) {
        calculate(-1)
    }
    
    @IBAction func resetNumber(_ sender: Any) {
        calculate(0)
    }
    
}

