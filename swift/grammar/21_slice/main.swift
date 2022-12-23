class Weapon {
    let name: String?
    let damage: Int?

    init?(name: String, damage: Int) {
        self.name = name
        self.damage = damage
    }
}

func attack(with weapon: Weapon?, at range: ClosedRange<Int>?) {
    guard let weapon = weapon else {
        print("You don't have a weapon to attack with!")
        return
    }

    guard let name = weapon.name, let damage = weapon.damage else {
        print("Invalid weapon")
        return
    }

    guard let range = range else {
        print("Invalid range")
        return
    }

    let attackRoll = Int.random(in: range)
    print("Attacking with \(name) for \(damage + attackRoll) damage!")
}

let sword = Weapon(name: "Sword", damage: 10)
let attackRange: ClosedRange<Int> = 5...10
attack(with: sword, at: attackRange)  // Output: "Attacking with Sword for [15-20] damage!"

let noWeapon: Weapon? = nil
attack(with: noWeapon, at: attackRange)  // Output: "You don't have a weapon to attack with!"

let invalidWeapon = Weapon(name: "", damage: 0)
attack(with: invalidWeapon, at: attackRange)  // Output: "Invalid weapon"

let invalidRange: ClosedRange<Int>? = nil
attack(with: sword, at: invalidRange)  // Output: "Invalid range"