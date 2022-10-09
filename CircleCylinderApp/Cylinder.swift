//
//  Cylinder.swift
//  CircleCylinderApp
//
//  Created by alex on 9/10/2022.
//

import Foundation

class Cylinder : Circle {
    
    var height : Double = 0.0;
    
    init(radius: Double, height: Double) {
        self.height = height
        super.init(radius: radius)
    }
    
    func calculateVolume () -> Double {
        return super.calculateArea() * self.height;
    }
}
