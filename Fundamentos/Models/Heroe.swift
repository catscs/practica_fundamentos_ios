//
//  Heroe.swift
//  Fundamentos
//
//  Created by Félix Luján Albarrán on 4/12/20.
//

import UIKit

typealias Heores = [Hero]

class Hero: Character {
    enum Attack {
        case sword, arch, dagger
    }
    var color: UIColor
    var attack: Attack
    
    init(image: String, name: String, description: String, color: UIColor, attack: Attack) {
        self.color = color
        self.attack = attack
        super.init(image: image, name: name, description: description)
    }
}
