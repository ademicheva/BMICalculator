//
//  ViewController.swift
//  BMICalculator
//
//  Created by Алина on 23.11.2021.
//

import UIKit
import JVFloatLabeledTextField
import LMGaugeViewSwift
//GaugeViewDelegate
class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    let imageNameArray = ["Очень серьезный недостаток веса",
                            "Серьезный недостаток веса",
                            "Недостаток веса",
                            "Норм.вес",
                            "Избыточный вес",
                            "Ожирение Класс I",
                            "Ожирение Класс II",
                            "Ожирение Класс III"]
    let indexArray = ["< 16.0",
                    "16.0 - 16.9",
                    "17.0 - 18.4",
                    "18.5 - 24.9",
                    "25.0 - 29.9",
                    "30.0 - 34.9",
                    "35.0 - 39.9",
                    ">= 40.0"]
    
    
    @IBOutlet weak var ageTextField: JVFloatLabeledTextField!
    @IBOutlet weak var heightTextField: JVFloatLabeledTextField!
    
    @IBOutlet weak var weightTextField: JVFloatLabeledTextField!
    
    @IBOutlet weak var cmLabel: UILabel!
    @IBOutlet weak var kgLabel: UILabel!
    
    @IBOutlet weak var womanBtn: UIButton!
    @IBOutlet weak var manBtn: UIButton!
    
    @IBOutlet weak var gaugeControl: GaugeView!
    
//    @IBOutlet weak var tableView: UITableView!
    
    @IBOutlet weak var tableView: UITableView!
    let a = 5
    
    
    
    
 //   gaugeControl.delegate = self
    
 //   ageTextField
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        
        gaugeControl.delegate = self
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
        
        
        gaugeControl.minValue = 0
        gaugeControl.maxValue = 100
        gaugeControl.limitValue = 30
        gaugeControl.showMinMaxValue = false
        
        gaugeControl.value = 20
        gaugeControl.ringBackgroundColor = .systemGray // разница
        gaugeControl.tintColor = .systemPink
        gaugeControl.limitDotColor = .purple
        
        
        gaugeControl.unitOfMeasurement = "ИМТ"
        
        
        
        
//        tableView.delegate = self
//        tableView.dataSource = self
        tableView.separatorColor = .white // цвет границ

        

        if a == 5 {
            let indexPath = IndexPath(row: 1, section: 0)
            tableView.selectRow(at: indexPath, animated: true, scrollPosition: .top)
            tableView.allowsSelection = false
        }
        
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
    
    
    // MARK: Gauge control functionality
    
  //  gaugeControl.delegate = self
 
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return imageNameArray.count
    }

    
     func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MyTableViewCell", for: indexPath) as! MyTableViewCell
        let backgroundView = UIView()
        backgroundView.backgroundColor = .white


        cell.selectedBackgroundView = backgroundView
        cell.textItem.text = imageNameArray[indexPath.row]
        cell.indexItem.text = indexArray[indexPath.row]
        cell.textItem.highlightedTextColor = UIColor(named: "blueColor")
        cell.indexItem.highlightedTextColor = UIColor(named: "blueColor")
        return cell
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

//
extension  ViewController:  GaugeViewDelegate {
    func ringStokeColor(gaugeView: GaugeView, value: Double) -> UIColor {
        if value == 0   {
            return .systemGray
        } else if value > 0 && value <= 30 {
            return .systemBlue
        } else if value >= 31 && value <= 50 {
            return .systemGreen
        } else {
            return . red
        }
    }
}
