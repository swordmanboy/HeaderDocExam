//
//  Car.swift
//  HeaderDocCar
//
//  Created by Apinun Wongintawang on 11/7/18.
//  Copyright © 2018 Apinun Wongintawang. All rights reserved.
//

import UIKit

enum LeverAlertHorn {
    case LIGTH
    case MEDIUM
    case LOUD
}

class Car {
    var name: String!
    var image: UIImage!
    
    init(name: String, image: UIImage) {
        self.name = name
        self.image = image
    }
    
    /**
     # Lists
     
     You can apply *italic*, **bold**, or `code` inline styles.
     
     ## Unordered Lists
     
     - Lists are great,
     - but perhaps don't nest
     - Sub-list formatting
     
     - isn't the best.
     
     ## Ordered Lists
     
     1. Ordered lists, too
     2. for things that are sorted;
     3. Arabic numerals
     4. are the only kind supported.
     */
    func drive() -> String {
        print("drive 100 Km/hr")
        return "drive 100 Km/hr"
    }

    /** Horn Beep!
     - Returns: horn string
     */
    func horn() -> String {
        print("Beep Beep!")
        return "Beep Beep!"
    }
    
    func returnCar() -> String {
        print("return on next express 200 metres.")
        return "return on next express 200 metres."
    }
}

class Ambulance: Car {
    /** Description
      *
      * - Parameter level: level description
      * - Returns: return value description
      [ImageIcon](https://s.isanook.com/ns/0/rp/r/w700/ya0xa0m1w0/aHR0cHM6Ly9zLmlzYW5vb2suY29tL25zLzAvdWQvMTUxMy83NTY5OTYyL21hcy5qcGc=.jpg)
     
     */
    func alert(level: LeverAlertHorn) -> String {
        switch level {
        case .LIGTH:
            return "BEEP!   BEEP!  BEEP"
        case .MEDIUM:
            return "BEEP! BEEP! BEEP! BEEP! BEEP! BEEP! BEEP! BEEP! BEEP!"
        case .LOUD:
            return "BEEP!BEEP!BEEP!BEEP!BEEP!BEEP!BEEP!BEEP!BEEP!"
        }
    }
}


