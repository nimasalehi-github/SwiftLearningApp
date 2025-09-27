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
    // Stored Property → مقداری که مستقیم توی حافظه نگه‌داری میشه
    var name: String = "Nima"
    
    // Computed Property → هر بار که بهش دسترسی پیدا می‌کنیم محاسبه می‌شود
    var greeting: String {
        return "Hello, \(name)! Welcome to SwiftUI"
    }
    
    // Static Property → مربوط به خود struct هست، نه به نمونه (instance)
    static let appVersion: String = "1.0"


    
    var body: some View {
        VStack { // چندتا ویو رو عمودی می‌چینه
            Text("Hello, world!")
                .padding()
            
            // از پراپرتی استفاده می‌کنیم
            Text("My name is \(name)")
            
            Text(greeting)
                .foregroundColor(.blue) // رنگ متن آبی شود

            Text("App Version: \(ContentView.appVersion)")
                .foregroundColor(.green)

        }
    }
}

struct Previews_ContentView_Previews: PreviewProvider {
    static var previews: some View {
        /*@START_MENU_TOKEN@*/Text("Hello, World!")/*@END_MENU_TOKEN@*/
    }
}
