import Foundation

struct Event: Identifiable {
    var id = UUID()
    var title: String
    var description: String
    var lastOccurrence: Date
    var numberOfOccurrences: Int
}
