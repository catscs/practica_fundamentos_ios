//
//  DetailTV.swift
//  Fundamentos
//
//  Created by Félix Luján Albarrán on 5/12/20.
//

import UIKit

class DetailTV: UITableViewController {
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var image: UIImageView!
    
    var character: Character? = nil
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        if character is Hero {
            let hero = character as? Hero
            setHero(hero: hero)
        }
        
        image.image = UIImage(named: character?.image ?? "")
        nameLabel.text = character?.name
    }
    
    private func setHero(hero: Hero?) {
        nameLabel.tintColor = hero?.color
    }
    
}
