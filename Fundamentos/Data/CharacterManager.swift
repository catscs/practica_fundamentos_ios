//
//  CharacterManager.swift
//  Fundamentos
//
//  Created by Félix Luján Albarrán on 5/12/20.
//

import Foundation


class CharacterManager {
    
    func getHeroes() -> Heores {
        let characterDelegate: CharacterDelegate = CharacterFactory.create()
        return characterDelegate.getHeroes()
    }
}
