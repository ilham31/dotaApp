//
//  HeroAPIModel.swift
//  dota
//
//  Created by Muhammad Ilham Ramadhan on 23/07/21.
//

import Foundation
import Realm
import RealmSwift

class Hero: Object, Decodable {
    @objc dynamic var id: Int = 0
    @objc dynamic var name: String = ""
    @objc dynamic var localizedName: String = ""
    @objc dynamic var primaryAttr: String = ""
    @objc dynamic var attackType: String = ""
    @objc dynamic var img: String = ""
    @objc dynamic var icon: String = ""
    
    var roles = List<String>()
    
    @objc dynamic var baseHealth: Int = 0
    @objc dynamic var baseAttackMin: Int = 0
    @objc dynamic var baseAttackMax: Int = 0
    @objc dynamic var baseStr: Int = 0
    @objc dynamic var baseAgi: Int = 0
    @objc dynamic var baseInt: Int = 0
    @objc dynamic var attackRange: Int = 0
    @objc dynamic var projectileSpeed: Int = 0
    @objc dynamic var moveSpeed: Int = 0
    @objc dynamic var legs: Int = 0
    @objc dynamic var heroID: Int = 0
    @objc dynamic var turboPicks: Int = 0
    @objc dynamic var turboWINS: Int = 0
    @objc dynamic var the1_Win: Int = 0
    @objc dynamic var the2_Pick: Int = 0
    @objc dynamic var the2_Win: Int = 0
    @objc dynamic var the3_Pick: Int = 0
    @objc dynamic var the3_Win: Int = 0
    @objc dynamic var the4_Pick: Int = 0
    @objc dynamic var the4_Win: Int = 0
    @objc dynamic var the5_Pick: Int = 0
    @objc dynamic var the5_Win: Int = 0
    @objc dynamic var the6_Pick: Int = 0
    @objc dynamic var the6_Win: Int = 0
    @objc dynamic var the7_Pick: Int = 0
    @objc dynamic var the7_Win: Int = 0
    @objc dynamic var the8_Pick: Int = 0
    @objc dynamic var the8_Win: Int = 0
    @objc dynamic var nullPick: Int = 0
    @objc dynamic var nullWin: Int = 0
    
    @objc dynamic var baseHealthRegen: Double = 0
    @objc dynamic var baseMana: Double = 0
    @objc dynamic var baseManaRegen: Double = 0
    @objc dynamic var baseArmor: Double = 0
    @objc dynamic var baseMr: Double = 0
    @objc dynamic var strGain: Double = 0
    @objc dynamic var agiGain: Double = 0
    @objc dynamic var intGain: Double = 0
    @objc dynamic var attackRate: Double = 0
    @objc dynamic var turnRate: Double = 0
    @objc dynamic var proWin: Double = 0
    @objc dynamic var proPick: Double = 0
    @objc dynamic var proBan: Double = 0
    @objc dynamic var the1_Pick: Double = 0
    
    @objc dynamic var cmEnabled: Bool =  false
    
    enum CodingKeys: String, CodingKey {
        case id, name
        case localizedName = "localized_name"
        case primaryAttr = "primary_attr"
        case attackType = "attack_type"
        case roles, img, icon
        case baseHealth = "base_health"
        case baseHealthRegen = "base_health_regen"
        case baseMana = "base_mana"
        case baseManaRegen = "base_mana_regen"
        case baseArmor = "base_armor"
        case baseMr = "base_mr"
        case baseAttackMin = "base_attack_min"
        case baseAttackMax = "base_attack_max"
        case baseStr = "base_str"
        case baseAgi = "base_agi"
        case baseInt = "base_int"
        case strGain = "str_gain"
        case agiGain = "agi_gain"
        case intGain = "int_gain"
        case attackRange = "attack_range"
        case projectileSpeed = "projectile_speed"
        case attackRate = "attack_rate"
        case moveSpeed = "move_speed"
        case turnRate = "turn_rate"
        case cmEnabled = "cm_enabled"
        case legs
        case heroID = "hero_id"
        case turboPicks = "turbo_picks"
        case turboWINS = "turbo_wins"
        case proWin = "pro_win"
        case proPick = "pro_pick"
        case proBan = "pro_ban"
        case the1_Pick = "1_pick"
        case the1_Win = "1_win"
        case the2_Pick = "2_pick"
        case the2_Win = "2_win"
        case the3_Pick = "3_pick"
        case the3_Win = "3_win"
        case the4_Pick = "4_pick"
        case the4_Win = "4_win"
        case the5_Pick = "5_pick"
        case the5_Win = "5_win"
        case the6_Pick = "6_pick"
        case the6_Win = "6_win"
        case the7_Pick = "7_pick"
        case the7_Win = "7_win"
        case the8_Pick = "8_pick"
        case the8_Win = "8_win"
        case nullPick = "null_pick"
        case nullWin = "null_win"
    }
    
    public required convenience init(from decoder: Decoder) throws {
        self.init()
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(Int.self, forKey: .id)
        self.localizedName = try container.decode(String.self, forKey: .localizedName)
        self.roles = try container.decode(List.self, forKey: .roles)
        self.img = try container.decode(String.self, forKey: .img)
        self.attackType = try container.decode(String.self, forKey: .attackType)
        self.baseAttackMax = try container.decode(Int.self, forKey: .baseAttackMax)
        self.baseHealth = try container.decode(Int.self, forKey: .baseHealth)
        self.baseArmor = try container.decode(Double.self, forKey: .baseArmor)
        self.baseMana = try container.decode(Double.self, forKey: .baseMana)
        self.moveSpeed = try container.decode(Int.self, forKey: .moveSpeed)
        self.primaryAttr = try container.decode(String.self, forKey: .primaryAttr)
    }
}
