//
//  ContentView.swift
//  SwiftLearningApp
//
//  Created by Nima Salehi on 9/27/25.
//

import SwiftUI

struct ContentView: View, Describable {
    // Stored property
    var name: String = "Nima"
    
    // Computed property
    var greeting: String {
        return "Hello, \(name)! Welcome to SwiftUI"
    }
    
    // Static property
    static let appVersion: String = "1.0"
    
    // State property
    @State private var counter: Int = 0
    
    // نمونه‌های کلاس به عنوان property struct (برای جلوگیری از خطای Extra arguments)
    let dog = Dog(name: "Rex")
    let cat = Cat(name: "Milo")
    
    // پیاده‌سازی پروتکل برای خود ContentView
    var description: String {
        return "This is a ContentView struct with name: \(name)"
    }
    
    func details() -> String {
        return "Counter is currently at \(counter)."
    }
    
    var body: some View {
        VStack(spacing: 14) {
            Text("Hello, world!")
            Text("My name is \(name)")
            Text(greeting)
                .foregroundColor(.blue)
            Text("App Version: \(ContentView.appVersion)")
                .foregroundColor(.green)
            
            Divider()
            
            Text("Counter: \(counter)")
                .font(.headline)
            
            Button("Increase Counter") {
                counter += 1
            }
            .padding()
            .background(Color.yellow)
            .cornerRadius(8)
            
            Divider()
            
            // نمایش داده‌های پروتکل ContentView
            Text(description)
                .foregroundColor(.purple)
            Text(details())
                .foregroundColor(.orange)
            
            Divider()
            
            // استفاده از کلاس‌ها و ترکیب inheritance + protocol
            Text("Dog says: \(dog.speak())")
            Text("Cat says: \(cat.speak())")
            Text(cat.description)
                .foregroundColor(.pink)
            Text(cat.details())
                .foregroundColor(.gray)
        }
        .padding()
    }
}

// Preview
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
