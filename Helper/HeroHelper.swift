//
//  HeroHelper.swift
//  dota
//
//  Created by Muhammad Ilham Ramadhan on 24/07/21.
//

import Foundation
import RealmSwift

class HeroHelper {
    enum HeroPrimaryAttribute: String {
        case str, agi, int
    }
    
    static let instance = HeroHelper()
    
    func getHeroByRoles(role: String) -> [Hero] {
        do {
            let realm = try Realm()
            let heroes = realm.objects(Hero.self)
            if role == DotaAppsConstants.allRoles {
                return Array(heroes)
            } else {
                let filteredHero = heroes.filter({ $0.roles.contains(role) })
                return Array(filteredHero)
            }
        } catch {
            print("error add address")
        }
        return []
    }
    
    func getAllRoles() -> [String] {
        do {
            let realm = try Realm()
            let heroRolesModel = realm.objects(HeroRolesModel.self)
            if heroRolesModel.first?.roles.count ?? 0 > 0 {
                let roles = heroRolesModel.first?.roles ?? List<String>()
                return Array(roles)
            } else {
                return []
            }
        } catch {
            print("error add address")
        }
        return []
    }
    
    func getSimilarHero(heroAttribute: HeroPrimaryAttribute) -> [Hero] {
        do {
            let realm = try Realm()
            let heroes = realm.objects(Hero.self)
            switch heroAttribute {
            case .agi:
                let filteredHeroes = heroes.sorted(by: {$0.moveSpeed > $1.moveSpeed})
                return Array(filteredHeroes.prefix(3))
            case .str:
                let filteredHeroes = heroes.sorted(by: {$0.baseAttackMax > $1.baseAttackMax})
                return Array(filteredHeroes.prefix(3))
            case .int:
                let filteredHeroes = heroes.sorted(by: {$0.baseMana > $1.baseMana})
                return Array(filteredHeroes.prefix(3))
            }
        } catch {
            print("error add address")
        }
        return []
    }
    
}

