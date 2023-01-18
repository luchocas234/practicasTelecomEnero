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
    
    @IBOutlet weak var mySegmentSection: UISegmentedControl!
    
    @IBOutlet weak var mySlide: UISlider!
    
    @IBOutlet weak var myStepper: UIStepper!
    
    
    @IBOutlet weak var mySwitch: UISwitch!
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
        myPickerView.isHidden = true
        myPickerView.backgroundColor = .lightGray
        myPickerView.dataSource = self // el encargado de darle los datos al Picker
        myPickerView.delegate = self
        
        // Page Control
        myPageControl.numberOfPages = pickerViewValues.count
        myPageControl.currentPageIndicatorTintColor = .red
        myPageControl.pageIndicatorTintColor = .systemGreen
        
        // Segments Sections
        mySegmentSection.removeAllSegments()
        
        for(index,value) in pickerViewValues.enumerated(){
            mySegmentSection.insertSegment(withTitle: value, at: index, animated: true)
        }
        
        // My Slide
        mySlide.minimumTrackTintColor = .cyan
        mySlide.maximumTrackTintColor = .gray
        mySlide.minimumValue = 1
        mySlide.maximumValue = Float(pickerViewValues.count)
       // Stepper
        
        myStepper.minimumValue = 1
        myStepper.maximumValue = Double(pickerViewValues.count)
        
        //Switch
        mySwitch.isOn = false
        
        
        
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
    
    
    @IBAction func mySegmentSection(_ sender: Any) {
        myPickerView.selectRow(mySegmentSection.selectedSegmentIndex, inComponent: 0, animated: true)
    }
    
    
    @IBAction func mySlideAction(_ sender: Any) {
        switch mySlide.value {
        case 1..<2:
            mySegmentSection.selectedSegmentIndex = 0
        case 2..<3:
            mySegmentSection.selectedSegmentIndex = 1
        case 3..<4:
            mySegmentSection.selectedSegmentIndex = 2
        case 4..<4: mySegmentSection.selectedSegmentIndex = 3
        default:
            mySegmentSection.selectedSegmentIndex = 4
        }
    }
    
    @IBAction func myStepperAction(_ sender: Any) {
        let value = myStepper.value
        mySlide.value = Float(value)
        
    }
    
    @IBAction func mySwitchAction(_ sender: Any) {
        if mySwitch.isOn{
            myPickerView.isHidden = false
        }else{
            myPickerView.isHidden = true
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
        myPageControl.currentPage = row
    }
    
    
}
