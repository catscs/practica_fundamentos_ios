//
//  DetailTV.swift
//  Fundamentos
//
//  Created by Félix Luján Albarrán on 5/12/20.
//

import UIKit

class DetailTV: UITableViewController {
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var imageVIew: UIImageView!
    @IBOutlet weak var attackLabel: UILabel!
    @IBOutlet weak var descriptionTextView: UITextView!
    
    var character: Character? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.separatorStyle = UITableViewCell.SeparatorStyle.none
        tableView.allowsSelection = false
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        attackLabel.text = ""
        if character is Hero {
            let hero = character as? Hero
            setHero(hero: hero)
        }
        
        imageVIew.image = UIImage(named: character?.image ?? "")
        nameLabel.text = character?.name
        descriptionTextView.text = character?.description
    }
    
    private func setHero(hero: Hero?) {
        nameLabel.textColor = hero?.color
        attackLabel.text = hero?.stringAttack
    }
    
}
