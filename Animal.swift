//
//  Animal.swift
//  SwiftLearningApp
//
//  Created by Nima Salehi on 9/28/25.
//

import Foundation

// کلاس پایه
class Animal {
    var name: String
    
    init(name: String) {
        self.name = name
    }
    
    func speak() -> String {
        return "..."
    }
}

// کلاس Dog که از Animal ارث‌بری می‌کند
class Dog: Animal {
    override func speak() -> String {
        return "Woof! 🐶"
    }
}

// کلاس Cat که هم از Animal ارث‌بری می‌کند و هم پروتکل Describable را پیاده می‌کند
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
