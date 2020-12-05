//
//  CharacterManager.swift
//  Fundamentos
//
//  Created by Félix Luján Albarrán on 5/12/20.
//

import Foundation


class CharacterManager {
    private var characterDelegate: CharacterDelegate
    
    init() {
        characterDelegate = CharacterFactory.create()
    }
    
    func getHeroes() -> Heores {
        return characterDelegate.getHeroes()
    }
    
    func getVillains() -> Villains {
        return characterDelegate.getVillains()
    }
}
