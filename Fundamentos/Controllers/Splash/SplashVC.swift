//
//  ViewController.swift
//  Fundamentos
//
//  Created by Félix Luján Albarrán on 4/12/20.
//

import UIKit

class SplashVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationToHome()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        navigationController?.isNavigationBarHidden = true
    }
    
    func navigationToHome() {
        DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(Constants.secondsToHome)) { [weak self] in
            
            let storyboardHome = UIStoryboard(name: Constants.storyboardHome, bundle: nil)
            if let destination = storyboardHome.instantiateInitialViewController() {
                self?.navigationController?.setViewControllers([destination], animated: true)
            }
            
        }
    }


}

