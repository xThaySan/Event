//
//  EventModel.swift
//  Event
//
//  Created by user231561 on 1/9/23.
//

import Foundation

struct Fields: Decodable {
    let activity: String
    let type: String
    let start: Date
    let end: Date
    let location: String
    let notes: String?
    let speakers: [String]?
    
    enum CodingKeys: String, CodingKey {
        case activity = "Activity"
        case end = "End"
        case location = "Location"
        case notes = "Notes"
        case start = "Start"
        case type = "Type"
        case speakers = "Speaker(s)"
    }
}

class Event: Decodable {
    let id: String
    let createdTime: String
    let fields: Fields
    
    init(id: String, createdTime: String, fields: Fields) {
        self.id = id
        self.createdTime = createdTime
        self.fields = fields
    }
}

struct EventResponse: Decodable {
    let records: [Event]
}

struct DailyEvents {
    var events: [Event]
    let date: Date
}
