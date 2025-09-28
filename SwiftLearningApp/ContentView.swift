//
//  ContentView.swift
//  SwiftLearningApp
//
//  Created by Nima Salehi on 9/27/25.
//

import SwiftUI

struct ContentView: View {
    let dog = Dog(name: "Rex")
    let cat = Cat(name: "Milo")

    var body: some View {
        VStack(spacing: 14) {
            Text("Hello, world!")
            Text("Dog says: \(dog.speak())")
            Text("Cat says: \(cat.speak())")
            Text(cat.description)
        }
        .padding()
    }
}
