//
//  ViewController.swift
//  practicasTelecomEnero
//
//  Created by u633168 on 11/01/2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //Mybutton
        myButton.setTitle("ChangeColor", for: .normal)
        myButton.backgroundColor = .blue
        myButton.setTitleColor(.white, for: .normal)
        
        
    }

    @IBAction func myButtonAction(_ sender: UIButton) {
        if(myButton.backgroundColor == .blue){
            myButton.backgroundColor = .green
        }else{
            myButton.backgroundColor = .blue 
        }
    }
    
}

