//
//  ViewController.swift
//  hw10SolarSystem
//
//  Created by admin on 2/15/20.
//  Copyright © 2020 admin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var planetButtonOutlet: [UIButton]!

    
    
    let mercury = Planet(name: "Mercury",
                         diameter: 4879.4,
                         satelites: 0,
                         weight: 0.38,
                         daysInYears: 88,
                         position: 1,
                         dayLength: 4224,
                         imageName:"mercury")
        
    let venus = Planet(name: "Venus",
                       diameter: 12303.6,
                       satelites: 0,
                       weight: 0.815,
                       daysInYears: 5586,
                       position: 2,
                       dayLength: 5832,
                       imageName:"venus")
        
    let earth = Planet(name: "Earth",
                       diameter: 12756.2,
                       satelites: 1,
                       weight: 0.0,
                       daysInYears: 365,
                       position: 3,
                       dayLength: 24,
                       imageName:"earth")
        
    let mars = Planet(name: "Mars",
                      diameter: 6779,
                      satelites: 2,
                      weight: 0.107,
                      daysInYears: 687,
                      position: 4,
                      dayLength: 24,
                      imageName:"mars")
        
    let jupiter = Planet(name: "Jupiter",
                         diameter: 139822,
                         satelites: 79,
                         weight: 317.8,
                         daysInYears: 12,
                         position: 5,
                         dayLength: 10,
                         imageName:"jupiter")
        
    let saturn = Planet(name: "Saturn",
                        diameter: 116460,
                        satelites: 82,
                        weight: 95.16,
                        daysInYears: 29,
                        position: 6,
                        dayLength: 11,
                        imageName:"saturn")
        
    let uranus = Planet(name: "Uranus",
                        diameter: 50724,
                        satelites: 27,
                        weight: 14.54,
                        daysInYears: 84,
                        position: 7,
                        dayLength: 17,
                        imageName:"uranus")

    let neptune = Planet(name: "Neptune",
                        diameter: 49244,
                        satelites: 14,
                        weight: 17.15,
                        daysInYears: 165,
                        position: 8,
                        dayLength: 16,
                        imageName:"neptune")

    let pluto = Planet(name: "Pluto",
                       diameter: 2376.6,
                       satelites: 5,
                       weight: 0.0022,
                       daysInYears: 248,
                       position: 9,
                       dayLength: 153,
                       imageName:"pluto")
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: animated)
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.setNavigationBarHidden(false, animated: animated)
    }
    
    
    
    @IBAction func planetButtonAction(_ sender: UIButton) {
        let fullInfoPlanetVC = FullInfoPlanetVC.createFullInfoPlanetVC()
        let navigationContr = navigationController
        navigationContr?.pushViewController(fullInfoPlanetVC, animated: true)
        let index = planetButtonOutlet.firstIndex(of: sender)
        
        switch index {
        case 0:
            createVCPlanetInfo(indexPlanet: 0, vc: fullInfoPlanetVC)
        case 1:
            createVCPlanetInfo(indexPlanet: 1, vc: fullInfoPlanetVC)
        case 2:
           createVCPlanetInfo(indexPlanet: 2, vc: fullInfoPlanetVC)
        case 3:
            createVCPlanetInfo(indexPlanet: 3, vc: fullInfoPlanetVC)
        case 4:
            createVCPlanetInfo(indexPlanet: 4, vc: fullInfoPlanetVC)
        case 5:
           createVCPlanetInfo(indexPlanet: 5, vc: fullInfoPlanetVC)
        case 6:
            createVCPlanetInfo(indexPlanet: 6, vc: fullInfoPlanetVC)
        case 7:
            createVCPlanetInfo(indexPlanet: 7, vc: fullInfoPlanetVC)
        case 8:
            fullInfoPlanetVC.tempHiddenJary = "jary"
            createVCPlanetInfo(indexPlanet: 8, vc: fullInfoPlanetVC)
        default:
            break
        }
    }
    
    func createVCPlanetInfo(indexPlanet: Int, vc: FullInfoPlanetVC){
        
        let arrayPlanet = [mercury, venus, earth, mars, jupiter, saturn, uranus, neptune, pluto]
        
        vc.title = arrayPlanet[indexPlanet].name
        vc.tempImagePlanet = arrayPlanet[indexPlanet].imageName
        vc.namePlanet = "Name: \(arrayPlanet[indexPlanet].name)"
        vc.diameterPlanet = "Diameter: \(arrayPlanet[indexPlanet].diameter) km"
        vc.satelitesPlanet = "Weight: \(arrayPlanet[indexPlanet].weight) Relatively earthly"
        vc.positionPlanet = "Days in years: \(arrayPlanet[indexPlanet].daysInYears)"
        vc.weightPlanet = "Position: \(arrayPlanet[indexPlanet].position)"
        vc.daysInYears = "Days lenght: \(arrayPlanet[indexPlanet].daysInYears)"
        vc.dayLenght = "Satelites: \(arrayPlanet[indexPlanet].dayLength)"
    }
}


