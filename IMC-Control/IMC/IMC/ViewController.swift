//
//  ViewController.swift
//  IMC
//
//  Created by gabriel gomes on 22/08/19.
//  Copyright © 2019 gabriel gomes. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tfWeight: UITextField!
    @IBOutlet weak var tfHeight: UITextField!
    
    @IBOutlet weak var lbResult: UILabel!
    @IBOutlet weak var ivResult: UIImageView!
    @IBOutlet weak var viResult: UIView!
    
    var imc : Double = 0
    @IBAction func calculate(_ sender: Any) {
//        print("foi")
            if let weight = Double(tfWeight.text!), let height = Double(tfHeight.text!){
            imc = weight/pow(height,2)
            showResults()
        }
    }
    
    func showResults(){
        var result : String = ""
        var image : String = ""
        
        switch imc {
            case 0..<16:
                result = "Magreza"
                image = "abaixo"
//                print("foi")
            case 16..<18.5:
                result = "Abaixo do peso"
                image = "abaixo"
//                print("foi")
            case 18.5..<25:
                result = "Peso ideal"
                image = "ideal"
//                print("foi")
            case 25..<30:
                result = "Sobrepeso"
                image = "sobre"
//                print("foi")
            default:
                result = "Obesidade"
                image = "obesidade"
//                print("foi")
        }
        lbResult.text = result
        ivResult.image = UIImage(named: image)
        viResult.isHidden = false
    }
}

