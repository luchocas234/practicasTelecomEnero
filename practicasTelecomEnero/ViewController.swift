//
//  ViewController.swift
//  practicasTelecomEnero
//
//  Created by u633168 on 11/01/2023.
//

import UIKit

class ViewController: UIViewController {

    //Outlets
    @IBOutlet weak var myButton: UIButton!
    
    @IBOutlet weak var myPickerView: UIPickerView!
    //Variables
    let pickerViewValues = ["Elemento 1","Elemento 2","Elemento 3"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //Mybutton
        myButton.setTitle("ChangeColor", for: .normal)
        myButton.backgroundColor = .blue
        myButton.tintColor = .blue
        myButton.setTitleColor(.white, for: .normal)
        //Picker
        myPickerView.backgroundColor = .lightGray
        myPickerView.dataSource = self // el encargado de darle los datos al Picker
        myPickerView.delegate = self
 
    }

    @IBAction func myButtonAction(_ sender: UIButton) {
        if(myButton.backgroundColor == .blue){
            myButton.backgroundColor = .green
        }else{
            myButton.backgroundColor = .blue 
        }
    }
    
}

extension ViewController: UIPickerViewDelegate, UIPickerViewDataSource{
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pickerViewValues.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return pickerViewValues[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        myButton.setTitle(pickerViewValues[row], for: .normal)
    }
    
    
}
