//
//  ConverterViewController.swift
//  Conersion Calculator
//
//  Created by apple on 2018/7/29.
//  Copyright © 2018年 Tech innovator. All rights reserved.
//

import UIKit

class ConverterViewController: UIViewController {
    
    @IBOutlet weak var outputDisplay: UITextField!
    @IBOutlet weak var inputDisplay: UITextField!
    @IBOutlet weak var outputUnit: UILabel!
    @IBOutlet weak var inputUnit: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    var option: Int = 1
    //var minusControl: Int = 0
    
    func contentConvert() {
        let convertController = Conversion()
        let conversion = convertController.converterChange(option, inputDisplay.text!)
        outputDisplay.text = conversion.new
    }
    
    func unitConvert() {
        let convertController = Conversion()
        let conversion = convertController.unitChange(option)
        self.inputUnit.text = conversion.old
        self.outputUnit.text = conversion.new
    }
    
    
    @IBAction func converterTap(_ sender: AnyObject) {
        let alert = UIAlertController(title: "", message: "Choose Converter", preferredStyle: UIAlertController.Style.actionSheet)
        alert.addAction(UIAlertAction(title: "Fahrenheit to Celcius", style: UIAlertAction.Style.default, handler: { (AlertAction) in
            self.option = 1
            self.clear((Any).self)
            self.unitConvert()
        }))
        alert.addAction(UIAlertAction(title: "Celcius to Fahrenheit", style: UIAlertAction.Style.default, handler: { (AlertAction) in
            self.option = 2
            self.clear((Any).self)
            self.unitConvert()
        }))
        alert.addAction(UIAlertAction(title: "Miles to Kilometers", style: UIAlertAction.Style.default, handler: { (AlertAction) in
            self.option = 3
            self.clear((Any).self)
            self.unitConvert()
        }))
        alert.addAction(UIAlertAction(title: "Miles to Kilometers", style: UIAlertAction.Style.default, handler: { (AlertActiom) in
            self.option = 4
            self.clear((Any).self)
            self.unitConvert()
        }))
        self.present(alert, animated: true, completion: nil)
    }
    
    
    @IBAction func clear(_ sender: Any) {
        inputDisplay.text = ""
        outputDisplay.text = ""
    }
    
    @IBAction func minusPlus(_ sender: Any) {
        if(inputDisplay.text != ""){
            if (inputDisplay.text?.contains("-") == false){
                inputDisplay.text = "-" + inputDisplay.text!
                contentConvert()
            } else {
                let temp = inputDisplay.text?.components(separatedBy: "-")
                inputDisplay.text = temp?[1]
                contentConvert()
            }
        }
        /*if(inputDisplay.text != ""){
            inputDisplay.text = "-" + inputDisplay.text!
            contentConvert()
        }*/
    }
    
    
    @IBAction func point(_ sender: Any) {
        if(inputDisplay.text?.contains(".") == false){
            if(inputDisplay.text == ""){
                inputDisplay.text? += "0."
            } else {
                inputDisplay.text? += "."
                contentConvert()
            }
        }
    }
    
    @IBAction func zero(_ sender: Any) {
        if (inputDisplay.text == ""){
            inputDisplay.text? += "0."
        } else {
            inputDisplay.text? += "0"
        }
        contentConvert()
    }
    
    @IBAction func one(_ sender: Any) {
        inputDisplay.text? += "1"
        contentConvert()
    }
    
    @IBAction func two(_ sender: Any) {
        inputDisplay.text? += "2"
        contentConvert()
    }
    
    @IBAction func three(_ sender: Any) {
        inputDisplay.text? += "3"
        contentConvert()
    }
    
    @IBAction func four(_ sender: Any) {
        inputDisplay.text? += "4"
        contentConvert()
    }
    
    @IBAction func five(_ sender: Any) {
        inputDisplay.text? += "5"
        contentConvert()
    }
    
    @IBAction func six(_ sender: Any) {
        inputDisplay.text? += "6"
        contentConvert()
    }
    
    @IBAction func seven(_ sender: Any) {
        inputDisplay.text? += "7"
        contentConvert()
    }
    
    @IBAction func eight(_ sender: Any) {
        inputDisplay.text? += "8"
        contentConvert()
    }
    
    @IBAction func nine(_ sender: Any) {
        inputDisplay.text? += "9"
        contentConvert()
    }
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
