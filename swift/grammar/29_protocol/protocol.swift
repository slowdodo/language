protocol Weapon {
    var name: String { get }
    var damage: Int { get }
    func attack() -> Int
}

extension Weapon {
    func attack() -> Int {
        return Int.random(in: 5...10) + damage
    }
}

struct Sword: Weapon {
    let name = "Sword"
    let damage = 10
}

struct Bow: Weapon {
    let name = "Bow"
    let damage = 5
}

func attack(with weapon: Weapon, at range: ClosedRange<Int>?) {
    guard let range = range else {
        print("Invalid range")
        return
    }

    print("Attacking with \(weapon.name) for \(weapon.attack()) damage!")
}

let sword = Sword()
let attackRange: ClosedRange<Int> = 5...10
attack(with: sword, at: attackRange)  // Output: "Attacking with Sword for [15-20] damage!"

let bow = Bow()
attack(with: bow, at: attackRange)  // Output: "Attacking with Bow for [10-15] damage!"

let invalidRange: ClosedRange<Int>? = nil
attack(with: sword, at: invalidRange)  // Output: "Invalid range"