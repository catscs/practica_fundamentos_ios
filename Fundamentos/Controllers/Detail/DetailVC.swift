//
//  DetailVC.swift
//  Fundamentos
//
//  Created by Félix Luján Albarrán on 5/12/20.
//

import UIKit


class DetailVC: UIViewController {
    
    var character: Character? = nil
    
    @IBOutlet weak var image: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        image.image = UIImage(named: character?.image ?? "")
        
    }
}
