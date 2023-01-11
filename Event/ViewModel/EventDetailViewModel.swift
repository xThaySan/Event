//
//  EventDetailViewModel.swift
//  Event
//
//  Created by user231561 on 1/10/23.
//

import Foundation

class EventDetailViewModel: ObservableObject {
    @Published var title: String
    @Published var date: String
    @Published var type: String
    @Published var location: String
    @Published var notes: String = "- Pas de notes -"
    @Published var notesExist: Bool = false
    @Published var speakers: [String]
    
    init(event: Event) {
        self.title = event.fields.activity
        self.type = event.fields.type
        self.location = event.fields.location
        self.speakers = event.fields.speakers ?? []
        
        let dateFormatter = DateFormatter()
        dateFormatter.locale = Locale(identifier: "fr_FR")
        dateFormatter.dateFormat = "EEEE dd MMMM"
        self.date = (dateFormatter.string(from: event.fields.start)).capitalized
        
        dateFormatter.dateFormat = "HH:mm"
        self.date += " de " + dateFormatter.string(from: event.fields.start) + " à " + dateFormatter.string(from: event.fields.end)
        
        if event.fields.notes != nil {
            self.notesExist = true
            self.notes = event.fields.notes!
        }
    }
}
