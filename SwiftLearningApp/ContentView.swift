import SwiftUI

struct ContentView: View {
    @State private var name: String = "Nima"
    @State private var counter: Int = 0

    var body: some View {
        ScrollView {
            VStack(spacing: 14) {

                // TextField درست و بدون خطا
                TextField("Enter your name", text: $name)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()

                Text("My name is \(name)")
                Text("Hello, \(name)! Welcome to SwiftUI")
                    .foregroundColor(.blue)

                Divider()

                Text("Counter: \(counter)")
                Button("Increase Counter") {
                    counter += 1
                }
                .padding()
                .background(Color.yellow)
                .cornerRadius(8)

            } // پایان VStack
            .padding()
        } // پایان ScrollView
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
