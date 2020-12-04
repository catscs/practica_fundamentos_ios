//
//  Repository.swift
//  Fundamentos
//
//  Created by Félix Luján Albarrán on 4/12/20.
//

import UIKit


class Repository {
    
    static func getHero() -> Heores {
        return [
            Hero(image: "hero1", name: "Hero1", description: "Descripción del hero1", color: UIColor(named: "cblue") ?? .blue, attack: .arch),
            Hero(image: "hero2", name: "Hero2", description: "Descripción del hero1", color: UIColor(named: "cgreen") ?? .green, attack: .dagger),
            Hero(image: "hero3", name: "Hero3", description: "Descripción del hero1", color: UIColor(named: "corange") ?? .orange, attack: .sword),
            Hero(image: "hero4", name: "Hero4", description: "Descripción del hero1", color: UIColor(named: "cpink") ?? .systemPink, attack: .arch),
            Hero(image: "hero5", name: "Hero5", description: "Descripción del hero1", color: UIColor(named: "cpurple") ?? .purple, attack: .dagger),
            Hero(image: "hero6", name: "Hero6", description: "Descripción del hero1", color: UIColor(named: "cred") ?? .red, attack: .sword),
            Hero(image: "hero7", name: "Hero7", description: "Descripción del hero1", color: UIColor(named: "cblue") ?? .blue, attack: .arch),
            Hero(image: "hero8", name: "Hero8", description: "Descripción del hero1", color: UIColor(named: "cgreen") ?? .green, attack: .dagger),
            Hero(image: "hero9", name: "Hero9", description: "Descripción del hero1", color: UIColor(named: "corange") ?? .orange, attack: .sword),
            Hero(image: "hero10", name: "Hero10", description: "Descripción del hero1", color: UIColor(named: "cred") ?? .red, attack: .arch),
            Hero(image: "hero11", name: "Hero11", description: "Descripción del hero1", color: UIColor(named: "cpink") ?? .systemPink, attack: .dagger),
            Hero(image: "hero12", name: "Hero12", description: "Descripción del hero1", color: UIColor(named: "cpurple") ?? .purple, attack: .sword)
        ]
    }
}
