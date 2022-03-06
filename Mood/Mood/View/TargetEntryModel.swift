//
//  TargetEntryModel.swift
//  Mood
//
//  Created by Joseph Taylor on 30/01/2022.
//

import Foundation

struct TargetEntryModel: Identifiable, Codable, Hashable {
    var titleText: String
    var bodyText: String
    var id: String
}

class TargetEntryStore: ObservableObject {
    static let shared = TargetEntryStore()
    
    @Published var targetEntries = [String: TargetEntryModel]()
}
