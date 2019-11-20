//
//  ViewController.swift
//  CalculateMe
//
//  Created by Volkan Sahin on 5.11.2019.
//  Copyright © 2019 Volkan Sahin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var mainView: UIView!
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var memoryNumber: UILabel!
    
    
    var number : Int = 0
    var resetPressed = false
    var numberShowed : String = ""
    var numberCalculate : String = ""
    var visnumber : String = ""
    var calcnumber : String = ""
    var memoryNumberCalculate = ""
    var a : Double = 0.0
    var calculatelabel = 0
    var flagOfMinus = 0
    var flagOfResult = 0
    var decimalPressed = 0
    var sumFlag = 0
    var minusFlag = 0
    var multiplyFlag = 0
    var divideFlag = 0
    var flagArray = [Int]()
    var calculationArray = ["+", "-", "x", "/"]
    
    @IBOutlet weak var plusButton: UIButton!
    @IBOutlet weak var minusButton: UIButton!
    @IBOutlet weak var multiplyButton: UIButton!
    @IBOutlet weak var divideButton: UIButton!
    @IBOutlet weak var buttonEqual: UIButton!
    @IBOutlet weak var buttonReset: UIButton!
    @IBOutlet weak var buttonPlusMinus: UIButton!
    
    @IBOutlet weak var buttonZero: UIButton!
    @IBOutlet weak var buttonOne: UIButton!
    @IBOutlet weak var buttonTwo: UIButton!
    @IBOutlet weak var buttonThree: UIButton!
    @IBOutlet weak var buttonFour: UIButton!
    @IBOutlet weak var buttonFive: UIButton!
    @IBOutlet weak var buttonSix: UIButton!
    @IBOutlet weak var buttonSeven: UIButton!
    @IBOutlet weak var buttonEight: UIButton!
    @IBOutlet weak var buttonNine: UIButton!
    @IBOutlet weak var buttonDecimal: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        resultLabel.text = ""
        resetButton()
        
        plusButton.layer.cornerRadius = plusButton.frame.size.height/4
        minusButton.layer.cornerRadius = plusButton.frame.size.height/4
        multiplyButton.layer.cornerRadius = plusButton.frame.size.height/4
        divideButton.layer.cornerRadius = plusButton.frame.size.height/4
        buttonEqual.layer.cornerRadius = plusButton.frame.size.height/4
        buttonReset.layer.cornerRadius = plusButton.frame.size.height/4
        
        buttonZero.layer.cornerRadius = plusButton.frame.size.height/4
        buttonOne.layer.cornerRadius = plusButton.frame.size.height/4
        buttonTwo.layer.cornerRadius = plusButton.frame.size.height/4
        buttonThree.layer.cornerRadius = plusButton.frame.size.height/4
        buttonFour.layer.cornerRadius = plusButton.frame.size.height/4
        buttonFive.layer.cornerRadius = plusButton.frame.size.height/4
        buttonSix.layer.cornerRadius = plusButton.frame.size.height/4
        buttonSeven.layer.cornerRadius = plusButton.frame.size.height/4
        buttonEight.layer.cornerRadius = plusButton.frame.size.height/4
        buttonNine.layer.cornerRadius = plusButton.frame.size.height/4
        buttonDecimal.layer.cornerRadius = plusButton.frame.size.height/4
        buttonPlusMinus.layer.cornerRadius = plusButton.frame.size.height/4
        
        buttonZero.layer.borderWidth = 1
        buttonZero.layer.borderColor = CGColor.init(srgbRed: 0, green: 0, blue: 0, alpha: 1)
        self.buttonZero.backgroundColor = UIColor.darkGray
        buttonOne.layer.borderWidth = 1
        buttonOne.layer.borderColor = CGColor.init(srgbRed: 0, green: 0, blue: 0, alpha: 1)
        self.buttonOne.backgroundColor = UIColor.darkGray
        buttonTwo.layer.borderWidth = 1
        buttonTwo.layer.borderColor = CGColor.init(srgbRed: 0, green: 0, blue: 0, alpha: 1)
        self.buttonTwo.backgroundColor = UIColor.darkGray
        buttonThree.layer.borderWidth = 1
        buttonThree.layer.borderColor = CGColor.init(srgbRed: 0, green: 0, blue: 0, alpha: 1)
        self.buttonThree.backgroundColor = UIColor.darkGray
        buttonFour.layer.borderWidth = 1
        buttonFour.layer.borderColor = CGColor.init(srgbRed: 0, green: 0, blue: 0, alpha: 1)
        self.buttonFour.backgroundColor = UIColor.darkGray
        buttonFive.layer.borderWidth = 1
        buttonFive.layer.borderColor = CGColor.init(srgbRed: 0, green: 0, blue: 0, alpha: 1)
        self.buttonFive.backgroundColor = UIColor.darkGray
        buttonSix.layer.borderWidth = 1
        buttonSix.layer.borderColor = CGColor.init(srgbRed: 0, green: 0, blue: 0, alpha: 1)
        self.buttonSix.backgroundColor = UIColor.darkGray
        buttonSeven.layer.borderWidth = 1
        buttonSeven.layer.borderColor = CGColor.init(srgbRed: 0, green: 0, blue: 0, alpha: 1)
        self.buttonSeven.backgroundColor = UIColor.darkGray
        buttonEight.layer.borderWidth = 1
        buttonEight.layer.borderColor = CGColor.init(srgbRed: 0, green: 0, blue: 0, alpha: 1)
        self.buttonEight.backgroundColor = UIColor.darkGray
        buttonNine.layer.borderWidth = 1
        buttonNine.layer.borderColor = CGColor.init(srgbRed: 0, green: 0, blue: 0, alpha: 1)
        self.buttonNine.backgroundColor = UIColor.darkGray
        buttonDecimal.backgroundColor = UIColor.init(red: 1, green: 0.83, blue: 0.36, alpha: 1)
        buttonPlusMinus.backgroundColor = UIColor.init(red: 1, green: 0.83, blue: 0.36, alpha: 1)
    }

    @IBAction func buttonTapped(_ sender: UIButton) {
        if flagOfResult == 1{
            flagOfResult = 0
            resultLabel.text! = ""
            numberShowed = ""
            memoryNumber.text = ""
        }
        number = sender.tag
        visnumber = String(number)
        calcnumber = String(number)
        if resetPressed == false{
            numberShowed = numberShowed + visnumber
            numberCalculate = numberCalculate + calcnumber
            resultLabel.text = numberShowed
        }
    }
    
    @IBAction func decimalPressed(_ sender: Any) {
        if flagOfResult == 1{
            flagOfResult = 0
            memoryNumber.text = ""
            resultLabel.text = "0"
            numberShowed = resultLabel.text!
            visnumber = ","
            calcnumber = "."
            numberShowed = numberShowed + visnumber
            numberCalculate = numberCalculate + calcnumber
            resultLabel.text = numberShowed
            decimalPressed = 1
        }else{
            if decimalPressed == 0{
                decimalPressed = 1
                if resultLabel.text == "0"{
                    numberShowed = "0"
                }else{
                    numberShowed = resultLabel.text!
                }
                visnumber = ","
                calcnumber = "."
                numberShowed = numberShowed + visnumber
                numberCalculate = numberCalculate + calcnumber
                resultLabel.text = numberShowed
            }
        }
    }
    
    @IBAction func calculation(_ sender: UIButton) {
        flagOfResult = 0
        flagArray = [sumFlag,minusFlag,multiplyFlag,divideFlag]
        if sumFlag != 1 && minusFlag != 1 && multiplyFlag != 1 && divideFlag != 1{
            switch sender.tag {
                case 0:
                    plusButton.backgroundColor = UIColor.init(red: 1, green: 0.83, blue: 0.61, alpha: 0.4)
                    decimalPressed = 0
                    calculatelabel = 0
                    sumFlag = 1
                    minusFlag = 0
                    multiplyFlag = 0
                    divideFlag = 0
                case 1:
                    minusButton.backgroundColor = UIColor.init(red: 1, green: 0.83, blue: 0.61, alpha: 0.4)
                    calculatelabel = 1
                    decimalPressed = 0
                    sumFlag = 0
                    minusFlag = 1
                    multiplyFlag = 0
                    divideFlag = 0
                case 2:
                    multiplyButton.backgroundColor = UIColor.init(red: 1, green: 0.83, blue: 0.61, alpha: 0.4)
                    calculatelabel = 2
                    decimalPressed = 0
                    sumFlag = 0
                    minusFlag = 0
                    multiplyFlag = 1
                    divideFlag = 0
                case 3:
                    divideButton.backgroundColor = UIColor.init(red: 1, green: 0.83, blue: 0.61, alpha: 0.4)
                    calculatelabel = 3
                    decimalPressed = 0
                    sumFlag = 0
                    minusFlag = 0
                    multiplyFlag = 0
                    divideFlag = 1
                default:
                    print("Otherwise, do something else.")
            }
            if resultLabel.text == "0" {
                numberShowed = "0"
            }
            numberShowed = resultLabel.text!
            memoryNumber.text = numberShowed + " \(calculationArray[sender.tag])"
            if let indic = numberShowed.firstIndex(of: ","){
                numberShowed.remove(at: indic)
                numberShowed.insert(".", at: indic)
            }
            memoryNumberCalculate = numberShowed
            resultLabel.text = ""
            numberShowed = ""
            numberCalculate = ""
        }else{
            let indexOfOne = flagArray.firstIndex(of: 1)
            if sender.tag == indexOfOne{
                resetButton()
            }else{
                switch sender.tag {
                    case 0:
                        resetButton()
                        plusButton.backgroundColor = UIColor.init(red: 1, green: 0.83, blue: 0.61, alpha: 0.4)
                        calculatelabel = 0
                        sumFlag = 1
                        minusFlag = 0
                        multiplyFlag = 0
                        divideFlag = 0
                    case 1:
                        resetButton()
                        minusButton.backgroundColor = UIColor.init(red: 1, green: 0.83, blue: 0.61, alpha: 0.4)
                        calculatelabel = 1
                        sumFlag = 0
                        minusFlag = 1
                        multiplyFlag = 0
                        divideFlag = 0
                    case 2:
                        resetButton()
                        multiplyButton.backgroundColor = UIColor.init(red: 1, green: 0.83, blue: 0.61, alpha: 0.4)
                        calculatelabel = 2
                        sumFlag = 0
                        minusFlag = 0
                        multiplyFlag = 1
                        divideFlag = 0
                    case 3:
                        resetButton()
                        divideButton.backgroundColor = UIColor.init(red: 1, green: 0.83, blue: 0.61, alpha: 0.4)
                        calculatelabel = 3
                        sumFlag = 0
                        minusFlag = 0
                        multiplyFlag = 0
                        divideFlag = 1
                    default:
                        print("Otherwise, do something else.")
                }
                if resultLabel.text == "0" {
                    numberShowed = "0"
                }
                numberShowed = resultLabel.text!
                memoryNumber.text = numberShowed + " \(calculationArray[sender.tag])"
                if let indic = numberShowed.firstIndex(of: ","){
                    numberShowed.remove(at: indic)
                    numberShowed.insert(".", at: indic)
                }
                memoryNumberCalculate = numberShowed
                memoryNumberCalculate = numberShowed
                resultLabel.text = "0"
                numberShowed = ""
                numberCalculate = ""
            }
        }
    }
    
    @IBAction func makeMinus(_ sender: Any) {
        let minus = "-"
        if flagOfResult == 1{
            numberShowed = resultLabel.text!
        }
        if (resultLabel.text != "0") && (flagOfMinus == 0){
            flagOfMinus = 1
            numberShowed = minus + numberShowed
            numberCalculate = minus + numberCalculate
            resultLabel.text = numberShowed
        }else if (resultLabel.text != "0") && (flagOfMinus == 1){
            flagOfMinus = 0
            let range = numberShowed.index(after: numberShowed.startIndex)..<numberShowed.endIndex
            numberShowed = String(numberShowed[range])
            let range_ = numberCalculate.index(after: numberCalculate.startIndex)..<numberCalculate.endIndex
            numberCalculate = String(numberCalculate[range_])
            resultLabel.text = numberShowed
        }
    }
    
    @IBAction func result(_ sender: Any) {
        if flagOfResult == 0{
            if numberCalculate == "" || memoryNumberCalculate == ""{
                numberCalculate = "0"
            }else{
                var calcresult = calculation(firstNumber: memoryNumberCalculate, secondNumber: numberCalculate, calculation: calculatelabel)
                if let indi = calcresult.firstIndex(of: "."){
                    calcresult.remove(at: indi)
                    calcresult.insert(",", at: indi)
                    
                }
                resultLabel.text = calcresult
                memoryNumber.text = memoryNumber.text! + " \(numberShowed)"
                resetButton()
            }
            flagOfResult = 1
        }
    }
    
    @IBAction func reset(_ sender: Any) {
        resetButton()
        flagOfResult = 0
        flagOfMinus = 0
        decimalPressed = 0
        resetPressed = true
        resultLabel.text = String(0)
        memoryNumber.text = ""
        numberShowed = ""
        numberCalculate = ""
        resetPressed = false
    }
    
    func resetButton(){
        sumFlag = 0
        minusFlag = 0
        multiplyFlag = 0
        divideFlag = 0
        decimalPressed = 0
        plusButton.backgroundColor = UIColor.init(red: 1, green: 0.83, blue: 0.36, alpha: 1)
        minusButton.backgroundColor = UIColor.init(red: 1, green: 0.83, blue: 0.36, alpha: 1)
        multiplyButton.backgroundColor = UIColor.init(red: 1, green: 0.83, blue: 0.36, alpha: 1)
        divideButton.backgroundColor = UIColor.init(red: 1, green: 0.83, blue: 0.36, alpha: 1)
    }
    
    func calculation(firstNumber:String, secondNumber:String, calculation : Int) -> String{
        var calculationResult = 0.0
        switch calculation {
        case 0:
            calculationResult = Double(firstNumber)! + Double(secondNumber)!
        case 1:
            calculationResult = Double(firstNumber)! - Double(secondNumber)!
        case 2:
            calculationResult = Double(firstNumber)! * Double(secondNumber)!
        case 3:
            if secondNumber == "0"{
                memoryNumber.text = ""
                resultLabel.text = "Err"
                return "Err"
                break
            }else{
                calculationResult = Double(firstNumber)! / Double(secondNumber)!
            }
        default:
            return ""
        }
        let tempVar = Int(calculationResult)
        if calculationResult.truncatingRemainder(dividingBy: Double(tempVar)) > 0{
            return String(calculationResult)
        }else{
            return String(Int(calculationResult))
        }
    }
}

