//
//  CharacterFactory.swift
//  Fundamentos
//
//  Created by Félix Luján Albarrán on 5/12/20.
//

import Foundation


class CharacterFactory {
    
    static func create() -> CharacterDelegate {
        return LocalRepository()
    }
}
