//
//  Planet.swift
//  solarSystem
//
//  Created by Anto Rados on 10/29/21.
//

import Foundation

// Planet class which accepts a name, imageName, diameter, dayLength, and maxMillionsKMsFromSun
class Planet {
    
    var name: String
    var imageName: String
    var diameter: Int
    var dayLength: Float
    var maxMillionKMsFromSun: Float
    
    init(name: String, imageName: String, diameter: Int, dayLength: Float, maxMillionKMsFromSun: Float) {
        self.name = name
        self.imageName = imageName
        self.diameter = diameter
        self.dayLength = dayLength
        self.maxMillionKMsFromSun = maxMillionKMsFromSun
    }
    
} // End of "Planet" class
