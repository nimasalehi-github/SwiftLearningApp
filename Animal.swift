import Foundation

class Animal {
    var name: String
    init(name: String) {
        self.name = name
    }
    func speak() -> String {
        return "..."
    }
}

class Dog: Animal {
    override func speak() -> String {
        return "Woof! 🐶"
    }
}

class Cat: Animal, Describable {
    override func speak() -> String {
        return "Meow! 🐱"
    }
    
    var description: String {
        return "This is a Cat named \(name)"
    }
    
    func details() -> String {
        return "Cats love to sleep 😴"
    }
}
