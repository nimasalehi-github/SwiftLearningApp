//
//  Describable.swift
//  SwiftLearningApp
//
//  Created by Nima Salehi on 9/28/25.
//

import Foundation

// پروتکل Describable
protocol Describable {
    var description: String { get }
    func details() -> String
}


