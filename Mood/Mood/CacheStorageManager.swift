//
//  CacheStorageManager.swift
//  Mood
//
//  Created by Joseph Taylor on 30/01/2022.
//

import Foundation
import Cache
import UIKit

class CacheStorageManager {
    static let shared = CacheStorageManager()
    
    private lazy var entryStorage: Storage<String, [JournalEntryModel]> = {
        return try! Storage(diskConfig: DiskConfig(name: "entries"),
                       memoryConfig: MemoryConfig(),
                       transformer: TransformerFactory.forCodable(ofType: [JournalEntryModel].self))
    }()
    
    func saveEntries(_ entries: [JournalEntryModel]) {
        try? entryStorage.setObject(entries, forKey: "entries")
    }
    
    func getEntries() -> [JournalEntryModel] {
        return (try? entryStorage.object(forKey: "entries")) ?? []
    }
}
    
//    private lazy var goalStorage: Storage<String, [Goal]> = {
//        return try! Storage(diskConfig: DiskConfig(name: "goals"),
//                       memoryConfig: MemoryConfig(),
//                       transformer: TransformerFactory.forCodable(ofType: [Goal].self))
//    }()
//
//    func saveDailyGoals(_ goals: [Goal]) {
//        try? goalStorage.setObject(goals, forKey: "dailyGoals")
//    }
//
//    func saveWeeklyGoals(_ goals: [Goal]) {
//        try? goalStorage.setObject(goals, forKey: "weeklyGoals")
//    }
//
//    func saveLongGoals(_ goals: [Goal]) {
//        try? goalStorage.setObject(goals, forKey: "longGoals")
//    }
//
//    func getDailyGoals() -> [Goal] {
//        return (try? goalStorage.object(forKey: "dailyGoals")) ?? []
//    }
//
//    func getWeeklyGoals() -> [Goal] {
//        return (try? goalStorage.object(forKey: "weeklyGoals")) ?? []
//    }
//
//    func getLongGoals() -> [Goal] {
//        return (try? goalStorage.object(forKey: "longGoals")) ?? []
//    }
//
//    private lazy var profileStorage: Storage<String, Profile> = {
//        return try! Storage(diskConfig: DiskConfig(name: "profile"),
//                       memoryConfig: MemoryConfig(),
//                       transformer: TransformerFactory.forCodable(ofType: Profile.self))
//    }()
//
//    func saveProfile(_ profile: Profile) {
//        do {
//            try profileStorage.setObject(profile, forKey: "profile")
//        } catch {
//            print(error)
//        }
//    }
//
//    func getProfile() -> Profile? {
//        return try? profileStorage.object(forKey: "profile")
//    }
//
//    func removeProfile() {
//        try? profileStorage.removeObject(forKey: "profile")
//    }
    

