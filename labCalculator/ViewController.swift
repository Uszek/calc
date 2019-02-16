//
//  ViewController.swift
//  labCalculator
//
//  Created by Systemy mobilne on 16/02/2019.
//  Copyright © 2019 Systemy mobilne. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    var startTyping = true
    
    var firstOperate = 0
    
    var wynik = 0
    
    var operacja = ""

    @IBOutlet weak var Display: UILabel!
    
    @IBAction func WidziPress(_ sender: UIButton) {
        
        
        if startTyping == true {
            Display.text = sender.currentTitle
            startTyping = false
        } else {
        Display.text = (Display.text)! + (sender.currentTitle)!
        }
        

        
    }
    
    @IBAction func Dzialanie(_ sender: UIButton) {
        startTyping = true
        
        operacja = sender.currentTitle!
        
        
        
        firstOperate = Int(Display.text!)!
        
        
    }
    
    fileprivate func silnia() {
    
        var wynik = 1
        for x in 2...Int(Display.text!)!
        {
            wynik = wynik*x
        }
        Display.text! = String(wynik)
    }
    
    fileprivate func potega() {
        var wynik = 1
        for x in 0...Int(Display.text!)!
        {
            wynik = firstOperate * (x * x)
        }
        Display.text! = String(wynik)
    }
    
    @IBAction func rowne(_ sender: UIButton) {
        startTyping = true

        switch operacja {
            
        case "+":
      Display.text! = String(firstOperate + Int(Display.text!)!)
        case "-":
        Display.text! = String(firstOperate - Int(Display.text!)!)
        case "/":
        Display.text! = String(firstOperate / Int(Display.text!)!)
        case "*":
        Display.text! = String(firstOperate * Int(Display.text!)!)
        case "!":
            
            silnia()
            
        case "^":
            
            potega()
        
        default :
            print("error")
       
    }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

