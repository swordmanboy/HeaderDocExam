//
//  MainViewController.swift
//  HeaderDocCar
//
//  Created by Apinun Wongintawang on 11/7/18.
//  Copyright © 2018 Apinun Wongintawang. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    @IBOutlet weak var showLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var driveBtn: UIButton!
    @IBOutlet weak var hornBtn: UIButton!
    @IBOutlet weak var returnBtn: UIButton!
    @IBOutlet weak var gasBtn: UIButton!
    @IBOutlet weak var alertBtn: UIButton!
    @IBOutlet weak var zombiesBtn: UIButton!
    @IBOutlet weak var carImageView: UIImageView!
    
    var ambulance: Ambulance! = nil
    
    @IBAction func carAction(_ sender: UIButton) {
        switch sender {
        case driveBtn:
            let show = ambulance.drive()
            self.showLabel.text = show
        case hornBtn:
            let show = ambulance.horn()
            self.showLabel.text = show
        case returnBtn:
            let show = ambulance.returnCar()
            self.showLabel.text = show
        case gasBtn:
            //TODO: 1. Find professional mechanic.
            //TODO: 2. Mechanic installing Gas system.
            //TODO: 3. PayMoney and drive to home
            
            //FIXME: print text when successful
            //self.showLabel.text = sound
            
            //MARK: this must to successful 10/11/61
            
            break
        case alertBtn:
            let sound = ambulance.alert(level: .MEDIUM)
            print(sound)
            self.showLabel.text = sound
        case zombiesBtn:
            let newCar = Garage.modifyToZombieMode(car: ambulance)
            self.ambulance = newCar as? Ambulance
            self.setUpUI()
        default:
            break
        }
    }
    
    private func setUpUI() {
        self.carImageView.image = ambulance.image
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        ambulance = Ambulance.init(name: "Ambulance Nun", image: #imageLiteral(resourceName: "icon_ambulance"))
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
}

