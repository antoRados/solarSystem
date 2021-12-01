//
//  PlanetListTableViewController.swift
//  solarSystem
//
//  Created by Anto Rados on 10/29/21.
//

import UIKit

class PlanetListTableViewController: UITableViewController {
    
    //MARK:- Lifecycles
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    //MARK:- Table view data source
    
    // Sets the number of rows in each section (section defaulted to 1)
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return PlanetController.planets.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "planetCell", for: indexPath)
        
        let planet = PlanetController.planets[indexPath.row]

        // Updates the appropriate labels with the appropriate information
        cell.textLabel?.text = planet.name
        cell.detailTextLabel?.text = "Planet \(indexPath.row + 1)"
        cell.imageView?.image = UIImage(named: planet.imageName)

        return cell
    }

    //MARK:- Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // IIDOO - Identifier, indexPath, Destination, Object to Send, Object to Receive
        
        if segue.identifier == "toPlanetDetail" {
            
            guard let indexPath = tableView.indexPathForSelectedRow,
                  let destination = segue.destination as? PlanetDetailViewController else { return }
            
            let planetToSend = PlanetController.planets[indexPath.row]
            destination.planet = planetToSend
            
        } // End of segue identifier
    } // End of "prepare" method
} // End of "PlanetListTableViewController" class
