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
    
    var body: some View {
        VStack { // چندتا ویو رو عمودی می‌چینه
            Text("Hello, world!")
                .padding()
            
            // از پراپرتی استفاده می‌کنیم
            Text("My name is \(name)")
        }
    }
}
