//
//  Garage.swift
//  HeaderDocCar
//
//  Created by Apinun Wongintawang on 11/7/18.
//  Copyright © 2018 Apinun Wongintawang. All rights reserved.
//

import UIKit

class Garage {
    static func modifyToZombieMode(car: Car) -> Car {
        let newCar = car
        newCar.name = "Tank"
        newCar.image = #imageLiteral(resourceName: "icon_tank")
        return car
    }
}
