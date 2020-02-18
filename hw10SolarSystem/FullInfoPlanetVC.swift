//
//  FullInfoPlanetVC.swift
//  hw10SolarSystem
//
//  Created by admin on 2/17/20.
//  Copyright © 2020 admin. All rights reserved.
//

import UIKit

class FullInfoPlanetVC: UIViewController {
    
    @IBOutlet weak var imagePlanet: UIImageView!
    @IBOutlet weak var namePlanetLabel: UILabel!
    @IBOutlet weak var diameterPlanetLabel: UILabel!
    @IBOutlet weak var weightPlanetLabel: UILabel!
    @IBOutlet weak var daysInYearsLabel: UILabel!
    @IBOutlet weak var positionPlanetLabel: UILabel!
    @IBOutlet weak var dayLenghtLabel: UILabel!
    @IBOutlet weak var satelitesPlanetLabel: UILabel!
    @IBOutlet weak var hiddenGary: UIImageView!
    
    var tempHiddenJary = String()
    var namePlanet = String()
    var diameterPlanet = String()
    var weightPlanet = String()
    var daysInYears = String()
    var positionPlanet = String()
    var dayLenght = String()
    var satelitesPlanet = String()
    var tempImagePlanet = String()
    
    static func createFullInfoPlanetVC() -> FullInfoPlanetVC {
        let storyboard = UIStoryboard(name: "FullInfoPlanet", bundle: nil)
        let fullInfoPlanetVC = storyboard.instantiateInitialViewController() as! FullInfoPlanetVC
        return fullInfoPlanetVC
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        hiddenGary.image = UIImage(named: tempHiddenJary)
        imagePlanet.image = UIImage(named: tempImagePlanet)    
        namePlanetLabel.text = namePlanet
        diameterPlanetLabel.text = diameterPlanet
        weightPlanetLabel.text = weightPlanet
        daysInYearsLabel.text = daysInYears
        positionPlanetLabel.text = positionPlanet
        dayLenghtLabel.text = dayLenght
        satelitesPlanetLabel.text = satelitesPlanet
    
    }
    


}
