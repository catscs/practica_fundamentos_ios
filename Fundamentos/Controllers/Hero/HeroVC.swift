//
//  HomeVC.swift
//  Fundamentos
//
//  Created by Félix Luján Albarrán on 4/12/20.
//

import UIKit


class HeroVC: UIViewController {
    
    private var heroes: Heores = []
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        heroes = Repository.getHero()
        configureTableView()
        
    }
    
    func configureTableView() {
        
        tableView.register(UINib(nibName: Constants.friendCellView, bundle: nil), forCellReuseIdentifier: Constants.frienCellViewIdentifier)
        tableView.delegate = self
        tableView.dataSource = self
    }
}


extension HeroVC: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return heroes.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 140.0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: Constants.frienCellViewIdentifier, for: indexPath) as? HeroCellView
        if indexPath.row < heroes.count {
            cell?.bind(hero: heroes[indexPath.row])
        }
        return cell ?? UITableViewCell()
    }
    
    
}
