//
//  RateViewController.swift
//  RandomAnimalApp
//
//  Created by TEO on 26/11/22.
//

import UIKit

class RateViewController: UIViewController {
    
    private struct Const {
        static let invalidValue = "Valor no permitido"
        static let invalidRate = "Calificación inválida"
    }
    
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var rateTextField: UITextField!
    
    var isHidden = true
    
    @IBAction func onRateButtonPressed(_ sender: UIButton) {
        rateAnimal()
        messageLabel.isHidden = isHidden
    }
    
    private func rateAnimal(){
        let value = rateTextField.text ?? ""
        guard let rate = Int(value) else {
            messageLabel.text = Const.invalidValue
            isHidden = false
            return
        }
        
        if rate >= 1, rate <= 5 {
            dismiss(animated: true)
            isHidden = true
        }else{
            isHidden = false
        }
        messageLabel.text = Const.invalidRate
    }
    
}
