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
        func get() -> String {
            switch self {
                case .sword:
                    return Constants.sword
                case .arch:
                    return Constants.arch
                case .dagger:
                    return Constants.dagger
            }
        }
    }
    
    var color: UIColor
    var attack: Attack
    
    var stringAttack: String {
        return attack.get()
    }
    
    init(image: String, name: String, description: String, color: UIColor, attack: Attack) {
        self.color = color
        self.attack = attack
        super.init(image: image, name: name, description: description)
    }
}
