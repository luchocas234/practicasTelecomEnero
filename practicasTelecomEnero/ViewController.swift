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
    
    @IBOutlet weak var myPageControl: UIPageControl!
    
    //Variables
    
    let pickerViewValues = ["Elemento 1","Elemento 2","Elemento 3","elemento 4","Elemento 5"]
    
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
        
        // Page Control
        myPageControl.numberOfPages = pickerViewValues.count
        myPageControl.currentPageIndicatorTintColor = .red
        myPageControl.pageIndicatorTintColor = .systemGreen
    }
        // Actions
    
    @IBAction func myButtonAction(_ sender: UIButton) {
        if(myButton.backgroundColor == .blue){
            myButton.backgroundColor = .green
        }else{
            myButton.backgroundColor = .blue 
        }
    }
    
    
    @IBAction func myPageControlAction(_ sender: Any) {
        myPickerView.selectRow(myPageControl.currentPage, inComponent: 0, animated: true)
        myButton.setTitle(pickerViewValues[myPageControl.currentPage], for: .normal)
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
        myPageControl.currentPage = row
    }
    
    
}
