<?xml version="1.0" encoding="UTF-8" standalone="no"?>
<document type="com.apple.InterfaceBuilder3.CocoaTouch.XIB" version="3.0" toolsVersion="13142" targetRuntime="iOS.CocoaTouch" propertyAccessControl="none" useAutolayout="YES" useTraitCollections="YES" useSafeAreas="YES" colorMatched="YES">
    <dependencies>
        <plugIn identifier="com.apple.InterfaceBuilder.IBCocoaTouchPlugin" version="12042"/>
    </dependencies>
    <objects>
        <placeholder placeholderIdentifier="IBFilesOwner" id="-1" userLabel="File's Owner"/>
        <placeholder placeholderIdentifier="IBFirstResponder" id="-2" customClass="UIResponder"/>
    </objects>
</document>
# SwiftUI iOS App - Step 1 Documentation

این فایل Markdown شامل تمام توضیحات و کدهایی است که تا این مرحله برای پروژه iOS SwiftUI آماده کرده‌ایم.

## پروژه: ContentView.swift

### ویژگی‌ها:
- TextField پویا با @State (`$name`)
- Counter با Button
- Dog و Cat با پروتکل و ارث‌بری
- Extensions روی String (Palindrome, CapitalizedFirst, Numeric)
- همه Viewها داخل ScrollView و VStack بدون خطا

### ContentView.swift
```swift
import SwiftUI

struct ContentView: View {
    @State private var name: String = "Nima"
    @State private var counter: Int = 0

    let dog = Dog(name: "Rex")
    let cat = Cat(name: "Milo")

    var greeting: String {
        return "Hello, \(name)! Welcome to SwiftUI"
    }

    var body: some View {
        ScrollView {
            VStack(spacing: 14) {

                TextField("Enter your name", text: $name)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()

                Text("My name is \(name)")
                Text(greeting)
                    .foregroundColor(.blue)

                Divider()

                Text("Counter: \(counter)")
                Button("Increase Counter") {
                    counter += 1
                }
                .padding()
                .background(Color.yellow)
                .cornerRadius(8)

                Divider()

                Text("Dog says: \(dog.speak())")
                Text("Cat says: \(cat.speak())")
                Text(cat.description)
                    .foregroundColor(.pink)
                Text(cat.details())
                    .foregroundColor(.gray)

                Divider()

                Text("Palindrome Test:")
                Text("\"Level\" is palindrome? \( "Level".isPalindrome ? "Yes ✅" : "No ❌")")

                Text("Capitalized First:")
                Text("swift -> \("swift".capitalizedFirst() )")

                Text("Numeric Test:")
                Text("12345 is numeric? \( "12345".isNumeric ? "Yes ✅" : "No ❌")")
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
```

### کلاس‌ها و پروتکل‌ها
- **Describable.swift**
```swift
protocol Describable {
    var description: String { get }
    func details() -> String
}
```

- **Animal.swift**
```swift
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
```

- **Extensions.swift**
```swift
extension String {
    var isPalindrome: Bool {
        let cleaned = self.lowercased().filter { $0.isLetter }
        return cleaned == String(cleaned.reversed())
    }
    func capitalizedFirst() -> String {
        guard let first = self.first else { return self }
        return first.uppercased() + self.dropFirst()
    }
    var isNumeric: Bool {
        return !isEmpty && allSatisfy { $0.isNumber }
    }
}
```

## نکات مهم
- تمام کلاس‌ها و پروتکل‌ها در فایل‌های جداگانه باشند تا از خطای redeclaration یا ambiguous جلوگیری شود.
- تمام Viewها داخل ScrollView/VStack قرار دارند.
- این پروژه آماده Commit و Push به GitHub است.

## گام بعدی
- در پروژه جدید: اضافه کردن **Extensions روی Int** برای قابلیت‌های عددی مثل زوج/فرد، توان گرفتن و فاکتوریل.
- ادامه آموزش و تست کلاس‌ها و پروتکل‌ها در پروژه جدید.

