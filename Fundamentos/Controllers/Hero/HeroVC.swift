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
        
        heroes = CharacterManager().getHeroes()
        configureTableView()
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.navigationBar.barTintColor = Util.getColorRandom()
    }
    
    func configureTableView() {
        
        tableView.register(UINib(nibName: Constants.heroCellView, bundle: nil), forCellReuseIdentifier: Constants.heroCellViewIdentifier)
        tableView.separatorStyle = UITableViewCell.SeparatorStyle.none
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let destination = segue.destination as? DetailVC, let hero = sender as? Hero else {
            return
        }
        
        destination.character = hero
        destination.color = hero.color
    }
}


extension HeroVC: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return heroes.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return CGFloat(Constants.heightTableHero)
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: Constants.heroCellViewIdentifier, for: indexPath) as? HeroCellView
        if indexPath.row < heroes.count {
            cell?.bind(hero: heroes[indexPath.row])
        }
        return cell ?? UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.row < heroes.count {
            performSegue(withIdentifier: Constants.vavigationHeroToDetal, sender: heroes[indexPath.row])
        }
    }
    
    
}
