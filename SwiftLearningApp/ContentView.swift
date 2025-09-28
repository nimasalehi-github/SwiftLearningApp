//
//  ContentView.swift
//  SwiftLearningApp
//
//  Created by Nima Salehi on 9/27/25.
//

//import SwiftUI
//
//struct ContentView: View {
//    var body: some View {
//        VStack {
//            Image(systemName: "globe")
//                .imageScale(.large)
//                .foregroundColor(.accentColor)
//            Text("Hello, world!")
//        }
//        .padding()
//    }
//}
//
//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}
import SwiftUI

struct ContentView: View, Describable {
    var name: String = "Nima"
    
    var greeting: String {
        return "Hello, \(name)! Welcome to SwiftUI"
    }
    
    static let appVersion: String = "1.0"
    
    @State private var counter: Int = 0
    
    // ✅ پیاده‌سازی پروتکل
    var description: String {
        return "This is a ContentView struct with name: \(name)"
    }
    
    func details() -> String {
        return "Counter is currently at \(counter)."
    }
    
    var body: some View {
        VStack {
            Text("Hello, world!")
            Text("My name is \(name)")
            Text(greeting).foregroundColor(.blue)
            Text("App Version: \(ContentView.appVersion)")
                .foregroundColor(.green)
            
            Text("Counter: \(counter)")
                .font(.headline)
                .padding(.top, 20)
            
            Button("Increase Counter") {
                counter += 1
            }
            .padding()
            .background(Color.yellow)
            .cornerRadius(8)
            
            // ✅ نمایش داده‌های پروتکل
            Text(description)
                .foregroundColor(.purple)
                .padding(.top, 20)
            
            Text(details())
                .foregroundColor(.orange)
        }
    }
}

