//
//  VillainVC.swift
//  Fundamentos
//
//  Created by Félix Luján Albarrán on 4/12/20.
//

import UIKit

class VillainVC: UIViewController {
    
    private var villains: Villains = []
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        villains = CharacterManager().getVillains()
        
        collectionView.register(UINib(nibName: Constants.villainCellView, bundle: nil), forCellWithReuseIdentifier: Constants.villainCellViewIdentifier)
        collectionView.delegate = self
        collectionView.dataSource = self
        
        
        let layout = UICollectionViewFlowLayout()
        layout.itemSize = CGSize(width: 120, height: 180)
        collectionView.collectionViewLayout = layout
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let destionation = segue.destination as? DetailVC, let villain = sender as? Villain else {
            return
        }
        
        destionation.character = villain
    }
}

extension VillainVC: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return villains.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: Constants.villainCellViewIdentifier, for: indexPath) as? VillainCellView
        
        if indexPath.row < villains.count {
            cell?.bind(villain: villains[indexPath.row])
        }
        
        return cell ?? UICollectionViewCell()
    }
}


extension VillainVC: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        if indexPath.row < villains.count {
            performSegue(withIdentifier: Constants.navigationVillainToDetail, sender: villains[indexPath.row])
        }
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 120, height: 180)
    }
}
