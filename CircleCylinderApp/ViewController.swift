//
//  ViewController.swift
//  CircleCylinderApp
//
//  Created by alex on 8/10/2022.
//

import UIKit


class ViewController: UIViewController {


    @IBOutlet weak var radiusTextField: UITextField!
    @IBOutlet weak var areaLabel: UILabel!
    @IBOutlet weak var diameterLabel: UILabel!
    @IBOutlet weak var circumferenceLabel: UILabel!
    
    @IBOutlet weak var heightTextFied: UITextField!
    @IBOutlet weak var volumeLabel: UILabel!
    
    private var cylinder : Cylinder!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        cylinder = Cylinder(radius: 0.0, height: 0.0)
    }


    @IBAction func calculateDidPress(_ sender: Any) {

        if let radius = Double(radiusTextField.text!.trimmingCharacters(in: .whitespacesAndNewlines)){
            //Here we are safe, since the user input a value
            cylinder.radius = radius
            let area = cylinder.calculateArea()
            
            areaLabel.text = "\(String(format: "%.2f", area))"
            let diameter = cylinder.calculateDiameter()
            diameterLabel.text = "\(String(format: "%.2f", diameter))"
            let circumference = cylinder.calculateCircumference()
            circumferenceLabel.text = "\(String(format: "%.2f", circumference))"
            
            if let height = Double(heightTextFied.text!.trimmingCharacters(in: .whitespacesAndNewlines)){
                cylinder.height = height
                let volume = cylinder.calculateVolume()
                volumeLabel.text = "\(String(format: "%.2f", volume))"
            }
                
        }else{
            let alert = UIAlertController(title: "Did you input the radius?", message: "Radius is needed to calculate area, diameter and circumference", preferredStyle: .alert)
            
            alert.addAction(UIAlertAction(title: "OK", style: .default))
            self.present(alert, animated: true)
        }

        
    }
}

