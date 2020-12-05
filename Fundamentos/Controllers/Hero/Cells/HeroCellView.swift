//
//  HeroCellView.swift
//  Fundamentos
//
//  Created by Félix Luján Albarrán on 4/12/20.
//

import UIKit

class HeroCellView: UITableViewCell {
    
    
    @IBOutlet weak var viewText: UIView!
    @IBOutlet weak var heroImage: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var attackLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        selectionStyle = .none
        
        heroImage.layer.cornerRadius = heroImage.frame.size.width / 2
        heroImage.clipsToBounds = true
        
        viewText.layer.cornerRadius = 40
        viewText.clipsToBounds = true
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        
        nameLabel.text = ""
        attackLabel.text = ""
        heroImage.image = nil
        heroImage.backgroundColor = .white
        viewText.backgroundColor = .white
    }
    
    
    func bind(hero: Hero) {
        heroImage.image = UIImage(named: "\(hero.image)\(Constants.imageTransparent)")
        heroImage.backgroundColor = hero.color
        viewText.backgroundColor = hero.color
        nameLabel.text = hero.name
        attackLabel.text = hero.stringAttack
    }
    
}
