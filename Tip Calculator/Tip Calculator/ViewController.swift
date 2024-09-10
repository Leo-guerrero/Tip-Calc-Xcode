//
//  ViewController.swift
//  Tip Calculator
//
//  Created by Leonardo Guerrero on 9/5/24.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBOutlet weak var txtBillAmount: UITextField!
    
    
    
    
    @IBOutlet weak var segTipPercent: UISegmentedControl!
    
    

    @IBAction func btnCalculateTip(_ sender: UIButton) {
        
        let userInput = Float(txtBillAmount.text!)
        
        if (userInput == nil){
            
            let alertController = UIAlertController(title: "Incorrect Bill Amount", message: "Wrong thing pal", preferredStyle: UIAlertController.Style.alert)
            
            alertController.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
            
            present(alertController, animated: true, completion: nil)
            return
        }
        
        let index : Int = segTipPercent.selectedSegmentIndex
        
        var tiprate : Float = 0.18
        
        
        if index == 0 {
            tiprate = 0.18
        }
        else if index == 1{
            tiprate = 0.20
        }
        else{
            tiprate = 0.24
        }
        
        let tip = userInput! * tiprate
        
        
        let display = String(format: "%.2f", tip)
        
        tipAmount.text = "$" + display
    }
    
    
    
    
    @IBOutlet weak var tipAmount: UILabel!
    
}

