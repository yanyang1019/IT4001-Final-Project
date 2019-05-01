//
//  ConverterViewController.swift
//  Conersion Calculator
//
//  Created by apple on 2018/7/29.
//  Copyright © 2018年 Tech innovator. All rights reserved.
//

import UIKit

class ConverterViewController: UIViewController {

    var converters = [Converter(label: "fahrenheit to celcius", inputUnit: "°F", outputUnit: "°C"),
                      Converter(label: "celcius to fahrenheit", inputUnit: "°C", outputUnit: "°F"),
                      Converter(label: "miles to kilometers", inputUnit: "mi", outputUnit: "km"),
                      Converter(label: "kilometers to miles", inputUnit: "km", outputUnit: "mi")]
    
    var choosedConverter: Converter?
    
    @IBOutlet weak var outputDisplay: UITextField!
    @IBOutlet weak var inputDisplay: UITextField!
    
    @IBAction func converterTap(_ sender: AnyObject) {
        let alert = UIAlertController(title: "", message: "choose converter", preferredStyle: UIAlertControllerStyle.actionSheet)
        alert.addAction(UIAlertAction(title: "fahrenheit to celcius", style: UIAlertActionStyle.default, handler: { (AlertAction) in
            self.choosedConverter = self.converters[0]
            self.inputDisplay.text = "°F"
            self.outputDisplay.text = "°C"
        }))
        alert.addAction(UIAlertAction(title: "celcius to fahrenheit", style: UIAlertActionStyle.default, handler: { (AlertAction) in
            self.choosedConverter = self.converters[1]
            self.inputDisplay.text = "°C"
            self.outputDisplay.text = "°F"
        }))
        alert.addAction(UIAlertAction(title: "miles to kilometers", style: UIAlertActionStyle.default, handler: { (AlertAction) in
            self.choosedConverter = self.converters[2]
            self.inputDisplay.text = "ml"
            self.outputDisplay.text = "km"
        }))
        alert.addAction(UIAlertAction(title: "miles to kilometers", style: UIAlertActionStyle.default, handler: { (AlertActiom) in
            self.choosedConverter = self.converters[3]
            self.inputDisplay.text = "km"
            self.outputDisplay.text = "ml"
        }))
        self.present(alert, animated: true, completion: nil)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //choosedConverter = converters[0]
        inputDisplay.text = "°F"
        outputDisplay.text = "°C"
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
