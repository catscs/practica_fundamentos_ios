//
//  Repository.swift
//  Fundamentos
//
//  Created by Félix Luján Albarrán on 4/12/20.
//

import UIKit


class LocalRepository: CharacterDelegate {
    
    func getHeroes() -> Heores {
        return [
            Hero(
                image: "hero1",
                name: "Hero1",
                description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
                color: UIColor(named: "cblue") ?? .blue,
                attack: .arch
            ),
            Hero(
                image: "hero2",
                name: "Hero2",
                description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
                color: UIColor(named: "cgreen") ?? .green,
                attack: .dagger
            ),
            Hero(
                image: "hero3",
                name: "Hero3",
                description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
                color: UIColor(named: "corange") ?? .orange,
                attack: .sword
            ),
            Hero(
                image: "hero4",
                name: "Hero4",
                description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
                color: UIColor(named: "cpink") ?? .systemPink,
                attack: .arch
            ),
            Hero(
                image: "hero5",
                name: "Hero5",
                description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
                color: UIColor(named: "cpurple") ?? .purple,
                attack: .dagger
            ),
            Hero(
                image: "hero6",
                name: "Hero6",
                description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
                color: UIColor(named: "cred") ?? .red,
                attack: .sword
            ),
            Hero(
                image: "hero7",
                name: "Hero7",
                description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
                color: UIColor(named: "cblue") ?? .blue,
                attack: .arch
            ),
            Hero(
                image: "hero8",
                name: "Hero8",
                description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
                color: UIColor(named: "cgreen") ?? .green,
                attack: .dagger
            ),
            Hero(
                image: "hero9",
                name: "Hero9",
                description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
                color: UIColor(named: "corange") ?? .orange,
                attack: .sword
            ),
            Hero(
                image: "hero10",
                name: "Hero10",
                description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
                color: UIColor(named: "cred") ?? .red,
                attack: .arch
            ),
            Hero(
                image: "hero11",
                name: "Hero11",
                description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
                color: UIColor(named: "cpink") ?? .systemPink,
                attack: .dagger
            ),
            Hero(
                image: "hero12",
                name: "Hero12",
                description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
                color: UIColor(named: "cpurple") ?? .purple,
                attack: .sword
            )
        ]
    }
    
    func getVillains() -> Villains {
        return [
            Villain(
                image: "villain1",
                name: "Villano1",
                description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book."
            ),
            Villain(
                image: "villain2",
                name: "Villano2",
                description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book."
            ),
            Villain(
                image: "villain3",
                name: "Villano3",
                description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book."
            ),
            Villain(
                image: "villain4",
                name: "Villano4",
                description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book."
            ),
            Villain(
                image: "villain5",
                name: "Villano5",
                description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book."
            ),
            Villain(
                image: "villain6",
                name: "Villano6",
                description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book."
            ),
            Villain(
                image: "villain7",
                name: "Villano7",
                description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book."
            ),
            Villain(
                image: "villain8",
                name: "Villano8",
                description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book."
            ),
            Villain(
                image: "villain9",
                name: "Villano9",
                description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book."
            ),
            Villain(
                image: "villain10",
                name: "Villano10",
                description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book."
            ),
            Villain(
                image: "villain11",
                name: "Villano11",
                description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book."
            ),
            Villain(
                image: "villain12",
                name: "Villano12",
                description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book."
            ),
            Villain(
                image: "villain1",
                name: "Villano1",
                description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book."
            ),
            Villain(
                image: "villain2",
                name: "Villano2",
                description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book."
            ),
            Villain(
                image: "villain3",
                name: "Villano3",
                description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book."
            )
        ]
    }
}
