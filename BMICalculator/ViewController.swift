//
//  ViewController.swift
//  BMICalculator
//
//  Created by Алина on 23.11.2021.
//

import UIKit
import JVFloatLabeledTextField

class ViewController: UIViewController {
    
//    let mintColor = UIColor(named: "mintTF")

    @IBOutlet weak var ageTextField: JVFloatLabeledTextField!
    @IBOutlet weak var heightTextField: JVFloatLabeledTextField!
    
    @IBOutlet weak var weightTextField: JVFloatLabeledTextField!
    
    @IBOutlet weak var cmLabel: UILabel!
    @IBOutlet weak var kgLabel: UILabel!
    
    @IBOutlet weak var womanBtn: UIButton!
    
    @IBOutlet weak var manBtn: UIButton!
    
    
    
    
 //   ageTextField
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ageTextField.addUnderLine(color: UIColor(named: "greyTF")!)
        heightTextField.addUnderLine(color: UIColor(named: "greyTF")!)
        weightTextField.addUnderLine(color: UIColor(named: "greyTF")!)
        

        ageTextField.floatingLabelActiveTextColor = UIColor(named: "mintColor")
        ageTextField.floatingLabelYPadding = -10
        
        heightTextField.floatingLabelActiveTextColor = UIColor(named: "mintColor")
        heightTextField.floatingLabelYPadding = -10
//        
//        
//        
        weightTextField.floatingLabelActiveTextColor = UIColor(named: "mintColor")
        weightTextField.floatingLabelYPadding = -10
        
//        womanBtn.tintColor = .red
//        manBtn.backgroundColor = .blue

        let origImage = UIImage(named: "woman-1")
        let tintedImage = origImage?.withRenderingMode(.alwaysTemplate)
        womanBtn.setImage(tintedImage, for: .normal)
      //  womanBtn.backgroundColor = .white
        womanBtn.tintColor = UIColor(named: "mintColor")
//
        let origImage1 = UIImage(named: "manC2")
        let tintedImage1 = origImage1?.withRenderingMode(.alwaysTemplate)
        manBtn.setImage(tintedImage1, for: .normal)
     //   manBtn.backgroundColor = .white
        manBtn.tintColor = UIColor(named: "greyTF")
     
        
        
//        let origImag = genderControl.imageForSegment(at: 0)
//  //      let tintedImage1 = origImag?.withRenderingMode(.alwaysTemplate)
//        genderControl.setImage(origImag, forSegmentAt: 0)
//    //    btnWoman.setImage(tintedImage, for: .normal)
//        genderControl.tintColor = .white
//
//
//
//
//        ////       UIButton Right Border
                let lineView = UIView(frame: CGRect(x: womanBtn.frame.size.width, y: 0, width: 2, height: womanBtn.frame.size.height))
                lineView.backgroundColor = UIColor(named: "greyTF")
//
//
        womanBtn.addSubview(lineView)
    }


    @IBAction func ageOnClick(_ sender: JVFloatLabeledTextField) {
        ageTextField.addUnderLine(color: UIColor(named: "mintColor")!)
        
    }
    
    @IBAction func ageOffClick(_ sender: JVFloatLabeledTextField) {
        ageTextField.addUnderLine(color: UIColor(named: "greyTF")!)
    }
    
    @IBAction func heightOnClick(_ sender: JVFloatLabeledTextField) {
        heightTextField.addUnderLine(color: UIColor(named: "mintColor")!)
    }
    
    
    @IBAction func heightOffClick(_ sender: JVFloatLabeledTextField) {
        heightTextField.addUnderLine(color: UIColor(named: "greyTF")!)
        
    }
    
    @IBAction func weightOnCLick(_ sender: JVFloatLabeledTextField) {
        weightTextField.addUnderLine(color: UIColor(named: "mintColor")!)
    }
    @IBAction func weightOffCLick(_ sender: Any) {
        weightTextField.addUnderLine(color: UIColor(named: "greyTF")!)
    }
    

    
    
    
    
    
}



extension JVFloatLabeledTextField {

    func addUnderLine (color: UIColor) {
        let bottomLine = CALayer()

        bottomLine.frame = CGRect(x: 0.0, y: self.bounds.height + 3, width: self.bounds.width, height: 1.5)
 //       let greyColor = UIColor(named: "greyTF")
        bottomLine.backgroundColor = color.cgColor
    
            self.borderStyle = UITextField.BorderStyle.none
            self.layer.addSublayer(bottomLine)

        
    }
    


}
