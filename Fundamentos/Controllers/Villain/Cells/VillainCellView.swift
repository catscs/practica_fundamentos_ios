//
//  VillainCellView.swift
//  Fundamentos
//
//  Created by Félix Luján Albarrán on 5/12/20.
//

import UIKit

class VillainCellView: UICollectionViewCell {
    
    @IBOutlet weak var villainImage: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        villainImage.layer.cornerRadius = villainImage.frame.size.width / 2
        villainImage.layer.borderWidth = 3
        villainImage.layer.borderColor = UIColor.black.cgColor
        villainImage.clipsToBounds = true
        
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        
        villainImage.image = nil
        nameLabel.text = ""
    }
    
    
    func bind(villain: Villain) {
        villainImage.image = UIImage(named: villain.image)
        nameLabel.text = villain.name
    }
        
    
}
