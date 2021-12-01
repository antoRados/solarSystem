//
//  PlanetDetailViewController.swift
//  solarSystem
//
//  Created by Anto Rados on 10/29/21.
//

import UIKit

class PlanetDetailViewController: UIViewController {

    //MARK:- Outlets
    @IBOutlet weak var planetNameLabel: UILabel!
    @IBOutlet weak var planetImageView: UIImageView!
    @IBOutlet weak var diameterLabel: UILabel!
    @IBOutlet weak var maxDistanceFromSunLabel: UILabel!
    @IBOutlet weak var dayLengthLabel: UILabel!
    
    //MARK:- Properties
    var planet: Planet?
    
    //MARK:- Lifecycles
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = #colorLiteral(red: 0.1019607857, green: 0.2784313858, blue: 0.400000006, alpha: 1)
        updateViews()
    }
    
    
    // MARK: - Helper Methods
    
    func updateViews() {
        guard let planet = planet else { return }
    
        planetNameLabel.text = planet.name
        planetImageView.image = UIImage(named: planet.imageName)
        diameterLabel.text = String(planet.diameter)
        maxDistanceFromSunLabel.text = String(planet.maxMillionKMsFromSun)
        dayLengthLabel.text = String(planet.dayLength)
        
    }
} // End "PlanetDetailViewController" class
