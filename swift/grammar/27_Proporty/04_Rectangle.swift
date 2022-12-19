struct Rectangle {
    var width: Double
    var height: Double

    var area: Double { // computed Property
        return width * height
    }

    init?(width: Double, height: Double) { // Failable Initializersfail
        if width <= 0 || height <= 0 {
            return nil
        }
        self.width = width
        self.height = height
    }
}

let rectangle = Rectangle(width: 10, height: 5)

if let rectangle = rectangle {
    print(rectangle.area) // prints 50
} else {
    print("Invalid rectangle")
}