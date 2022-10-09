//
//  Circle.swift
//  CircleCylinderApp
//
//  Created by alex on 8/10/2022.
//

import Foundation

class Circle {
    
    var radius : Double = 0.0;
    
    init(radius: Double) {
        self.radius = radius
    }
    
    func calculateArea() -> Double {
        return Double.pi * self.radius * self.radius
    }
    
    func calculateCircumference() -> Double {
        return 2*Double.pi*self.radius
    }
    
    func calculateDiameter() -> Double {
        return 2 * self.radius
    }
    
}
