import Foundation

protocol Describable {
    var description: String { get }
    func details() -> String
}
