//
//  JournalEntryModel.swift
//  Mood
//
//  Created by Joseph Taylor on 02/01/2022.
//

import Foundation
import SwiftUICharts

struct JournalEntryModel: Identifiable, Codable, Hashable {
    
    var rating: Double
    var reflectionText: String
    var happyText: String
    var achieveText: String
    var id: String
    var mood: Mood
    let exercise: Bool
    let water: Bool
    let sleep: Bool
    let meditation: Bool
    let fruit: Bool
    let reading: Bool
    let productivity: Bool
    let outside: Bool
    let date: Date
    
    enum Mood: String, Codable {
        case vsad = "😣"
        case sad = "😞"
        case ok = "😐"
        case good = "😊"
        case vgood = "😄"
        
        var value: Double {
            switch self {
            case .vsad:
                return  1
            case .sad:
                return 2
            case .ok:
                return 3
            case .good:
                return 4
            case .vgood:
                return 5
            }
        }
    }
}

class JournalEntryStore: ObservableObject {
    
    static let shared = JournalEntryStore()
    
    @Published var graphEntries = [DataPoint]()
    @Published var monthlyGraphEntries = [DataPoint]()
    
    @Published var journalEntries = [String: JournalEntryModel]()
    var sortedEntries: [JournalEntryModel] {
        return journalEntries.values.sorted(by: { $0.date > $1.date })
    }
    
    var sevenEntries: [JournalEntryModel] {
        if sortedEntries.count < 7 {
            var results: [JournalEntryModel] = []
            results = sortedEntries
            return results
        } else {
            var results: [JournalEntryModel] = []
            for i in 0..<7 {
                results.append(sortedEntries[i])
            }
            return results
        }
    }
    
    var averageOfPastSevenRating: Double {
        if sevenEntries.isEmpty {
            return 0.0
        }
        let total = sevenEntries.reduce(0, { initialValue, value in
            return initialValue + value.rating
        })
        return total / Double(sevenEntries.count)
    }
    
    var averageOfPastSevenMood: Double {
        if sevenEntries.isEmpty {
            return 2.0
        }
        let total = sevenEntries.reduce(0, { initialValue, value in
            return initialValue + value.mood.value
        })
        return total / Double(sevenEntries.count)
    }
    
    func addEntry(_ entry: JournalEntryModel) {
        let dateString = dateFormatter.string(from: entry.date)
        journalEntries[dateString] = entry
//        updateChartEntries()
//        updateMonthlyChartEntries()
//        saveEntriesToCache()
    }
    
    private lazy var dateFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateFormat = "dd-MM-yyyy"
        return formatter
    }()
    
    private lazy var weekdayFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateFormat = "EEEEE"
        return formatter
    }()
    
    private lazy var dayFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateFormat = "d/M"
        return formatter
    }()
    
}
