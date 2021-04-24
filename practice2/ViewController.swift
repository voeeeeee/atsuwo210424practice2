//
//  ViewController.swift
//  practice2
//
//  Created by 竹辻篤志 on 2021/04/24.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var num1: UITextField!
    @IBOutlet weak var num2: UITextField!
    
    var number1:Double = 0
    var number2:Double = 0
    var sumNumber:Double = 0
    
    var operatorFlag:Int = 0
    
    @IBOutlet weak var calculatedNumber: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    
    //segmentNumber毎に成立フラッグを割り振る
    @IBAction func segment(_ sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex {
        case 0:
            operatorFlag = 0
        case 1:
            operatorFlag = 1
        case 2:
            operatorFlag = 2
        case 3:
            operatorFlag = 3
        default:
            break
        }
    }
    
    //フラッグ毎に計算内容を変更する
    @IBAction func calculateButton(_ sender: UIButton) {
        number1 = Double(String(num1.text ?? "")) ?? 0
        number2 = Double(String(num2.text ?? "")) ?? 0
        
        switch operatorFlag {
        case 0:
            sumNumber = number1 + number2
            calculatedNumber.text = String(sumNumber)
        case 1:
            sumNumber = number1 - number2
            calculatedNumber.text = String(sumNumber)
        case 2:
            sumNumber = number1 * number2
            calculatedNumber.text = String(sumNumber)
        case 3:
            if number2 != 0{
                sumNumber = number1 / number2
                calculatedNumber.text = String(sumNumber)
                
            }else{
                calculatedNumber.text = "割る数には0以外を入力してください"
            }
        default:
            break
            
        }
        
    }
    
    
    
}

