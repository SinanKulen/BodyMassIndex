//
//  ViewController.swift
//  BodyMassIndex
//
//  Created by Sinan Kulen on 13.10.2021.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var heightText: UITextField!
    @IBOutlet var weightText: UITextField!
    @IBOutlet var textView: UITextView!
    @IBOutlet var heightLabel: UILabel!
    @IBOutlet var weightLabel: UILabel!
    @IBOutlet var resultLabel: UILabel!
    var heightCalc : Float!
    var weightCalc : Float!
    override func viewDidLoad() {
        super.viewDidLoad()
        resultLabel.text = "BMI : 0"
        heightLabel.isUserInteractionEnabled = true
        weightLabel.isUserInteractionEnabled = true
    }

    @IBAction func calculateButton(_ sender: Any) {
        guard let height = Float(heightText.text!) else { return}
        if 0 < height && height < 2.5  {
             heightCalc = height
        } else if 0 > height || height > 2.5 {
            let ac = UIAlertController(title: "You have logged in other than the specified value", message: "Please insert value that between 0 - 2.5 meter", preferredStyle: .alert)
            ac.addAction(UIAlertAction(title: "Ok", style: .default))
            present(ac, animated: true)
        }
        guard let weight = Float(weightText.text!) else { return}
        //    weightCalc = weight
            if 40 < weight && weight < 400 {
            weightCalc = weight
        } else if 40 > weight || weight > 400 {
            let ac = UIAlertController(title: "You have logged in other than the specified value", message: "Please insert value that between 40 - 400 kilogramme", preferredStyle: .alert)
            ac.addAction(UIAlertAction(title: "Ok", style: .default))
            present(ac, animated: true)
        }
        let squareHeight = heightCalc * heightCalc
        print(squareHeight)
        let calc = weightCalc / squareHeight
        print(calc)
        resultLabel.text = "BMI : \(String(calc))"
    }
    
 
    
}

