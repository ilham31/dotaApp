//
//  ListHeroRouter.swift
//  dota
//
//  Created by Muhammad Ilham Ramadhan on 23/07/21.
//  Copyright (c) 2021 ___ORGANIZATIONNAME___. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so
//  you can apply clean architecture to your iOS and Mac projects,
//  see http://clean-swift.com
//

import UIKit

@objc protocol ListHeroRoutingLogic {
    func routeToHeroDetail(viewController: UIViewController, hero: Hero, selectedRoles: String)
}

class ListHeroRouter: ListHeroRoutingLogic {
    weak var viewController: ListHeroViewController?
    
    func routeToHeroDetail(viewController: UIViewController, hero: Hero, selectedRoles: String) {
        let heroDetailVC = HeroDetailViewController.instantiate()
        heroDetailVC.selectedHero = hero
        heroDetailVC.selectedRoles = selectedRoles
        viewController.navigationController?.pushViewController(heroDetailVC, animated: true)
    }
}
