//
//  PlanetController.swift
//  solarSystem
//
//  Created by Anto Rados on 10/29/21.
//

import Foundation

class PlanetController {

  // Source of Truth (SOT)
    static var planets: [Planet] {
        let mercury = Planet(name: "Mercury", imageName: "mercury", diameter: 4880  , dayLength: 87.969 , maxMillionKMsFromSun: 43.0)
        let venus   = Planet(name: "Venus"  , imageName: "venus"  , diameter: 12104 , dayLength: 2802   , maxMillionKMsFromSun: 108.2)
        let earth   = Planet(name: "Earth"  , imageName: "earth"  , diameter: 12756 , dayLength: 24     , maxMillionKMsFromSun: 149.6)
        let mars    = Planet(name: "Mars"   , imageName: "mars"   , diameter: 6792  , dayLength: 24.7   , maxMillionKMsFromSun: 227.9)
        let jupiter = Planet(name: "Jupiter", imageName: "jupiter", diameter: 42984 , dayLength: 9.9    , maxMillionKMsFromSun: 778.6)
        let saturn  = Planet(name: "Saturn" , imageName: "saturn" , diameter: 120536, dayLength: 10.7   , maxMillionKMsFromSun: 1433.5)
        let uranus  = Planet(name: "Uranus" , imageName: "uranus" , diameter: 51118 , dayLength: 17.2   , maxMillionKMsFromSun: 2872.5)
        let neptune = Planet(name: "Neptune", imageName: "neptune", diameter: 49528 , dayLength: 16.1   , maxMillionKMsFromSun: 4495.1)
        let pluto   = Planet(name: "Pluto"  , imageName: "pluto"  , diameter: 2370  , dayLength: 153.3  , maxMillionKMsFromSun: 5906.4)
        
        return [mercury, venus, earth, mars, jupiter, saturn, uranus, neptune, pluto]
        
    } // End of computed property "planets"
} // End of "PlanetController" class
