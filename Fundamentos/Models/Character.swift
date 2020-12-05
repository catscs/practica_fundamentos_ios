//
//  Personaje.swift
//  Fundamentos
//
//  Created by Félix Luján Albarrán on 4/12/20.
//

import Foundation


class Character {
    var image: String
    var name: String
    var description: String
    
    init(image: String, name: String , description: String) {
        self.image = image
        self.name = name
        self.description = description
    }
}
