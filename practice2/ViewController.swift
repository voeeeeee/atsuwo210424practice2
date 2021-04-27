//
//  ViewController.swift
//  practice2
//
//  Created by 竹辻篤志 on 2021/04/24.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet private weak var num1: UITextField!
    @IBOutlet private weak var num2: UITextField!

    @IBOutlet private weak var segmentedControl: UISegmentedControl!

    @IBOutlet private weak var calculatedNumber: UILabel!
       
    //フラッグ毎に計算内容を変更する
    @IBAction private func calculateButton(_ sender: UIButton) {
        let number1 = Double(String(num1.text ?? "")) ?? 0
        let number2 = Double(String(num2.text ?? "")) ?? 0

        let calculatedNumberText: String
        
        switch segmentedControl.selectedSegmentIndex {
        case 0:
            calculatedNumberText = String(number1 + number2)
        case 1:
            calculatedNumberText = String(number1 - number2)
        case 2:
            calculatedNumberText = String(number1 * number2)
        case 3:
            if number2 == 0{
                calculatedNumberText = "割る数には0以外を入力してください"
            }else{
                calculatedNumberText = String(number1 / number2)
            }
        default:
            return
        }

        calculatedNumber.text = calculatedNumberText
    }
}
