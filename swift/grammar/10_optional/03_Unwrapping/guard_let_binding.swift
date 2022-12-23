class Weapon {
    let name: String?
    let damage: Int?

    init?(name: String, damage: Int) {
        self.name = name
        self.damage = damage
    }
}

func attack(with weapon: Weapon?) {
    guard let weapon = weapon else {
        print("You don't have a weapon to attack with!")
        return
    }

    guard let name = weapon.name, let damage = weapon.damage else {
        print("Invalid weapon")
        return
    }

    print("Attacking with \(name) for \(damage) damage!")
}

let sword = Weapon(name: "Sword", damage: 10)
attack(with: sword)  // Output: "Attacking with Sword for 10 damage!"

let noWeapon: Weapon? = nil
attack(with: noWeapon)  // Output: "You don't have a weapon to attack with!"

let invalidWeapon = Weapon(name: "", damage: 0)
attack(with: invalidWeapon)  // Output: "Invalid weapon"