//
//  DetailVC.swift
//  Fundamentos
//
//  Created by Félix Luján Albarrán on 5/12/20.
//

import UIKit


class DetailVC: UIViewController {
    
    var character: Character? = nil
    var color: UIColor?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let tableVC = self.children[0] as? DetailTV
        tableVC?.character = character
        
        configurateNavigation()
        
    }
    
    private func configurateNavigation() {
        navigationItem.largeTitleDisplayMode = .never
        navigationController?.navigationBar.barTintColor = color ?? .black
        navigationItem.title = character?.name
        navigationController?.navigationBar.tintColor = .white
    }
}

