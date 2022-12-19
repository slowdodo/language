class Person {
    var name: String //Stored Property
    var age: Int  

    init(name: String, age: Int) { 
        self.name = name
        self.age = age
    }

    var ageInDogYears: Int { // computed property
        return age * 7
    }
}

let person = Person(name: "John", age: 30)

print(person.ageInDogYears) // prints 210