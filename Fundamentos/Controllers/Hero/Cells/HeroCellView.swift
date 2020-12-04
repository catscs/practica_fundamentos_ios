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
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        selectionStyle = .none
        
        heroImage.layer.cornerRadius = heroImage.frame.size.width / 2
        heroImage.clipsToBounds = true
        
        viewText.clipsToBounds = true
        viewText.layer.cornerRadius = 40
        //viewText.layer.maskedCorners = [.layerMaxXMaxYCorner, .layerMinXMaxYCorner]
        
      
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
    }
    
    
    func bind(hero: Hero) {
        heroImage.image = UIImage(named: hero.image+"_transparent")
        heroImage.backgroundColor = hero.color
        viewText.backgroundColor = hero.color
    }
    
}
