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

struct ContentView: View {
    // Stored Property
    var name: String = "Nima"
    
    // Computed Property
    var greeting: String {
        return "Hello, \(name)! Welcome to SwiftUI"
    }
    
    // Static Property
    static let appVersion: String = "1.0"
    
    // ✅ State Property
    @State private var counter: Int = 0
    
    var body: some View {
        VStack {
            Text("Hello, world!")
            Text("My name is \(name)")
            Text(greeting).foregroundColor(.blue)
            Text("App Version: \(ContentView.appVersion)")
                .foregroundColor(.green)
            
            // ✅ استفاده از state
            Text("Counter: \(counter)")
                .font(.headline)
                .padding(.top, 20)
            
            Button("Increase Counter") {
                counter += 1 // با هر کلیک یکی زیاد میشه
            }
            .padding()
            .background(Color.yellow)
            .cornerRadius(8)
        }
    }
}
