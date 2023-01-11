//
//  DailyEventsViewModel.swift
//  Event
//
//  Created by user231561 on 1/10/23.
//

import Foundation

class DailyEventsViewModel: ObservableObject {
    @Published var events: [Event]
    @Published var date: Date
    @Published var dateString: String
    
    init(dailyEvents: DailyEvents) {
        self.events = dailyEvents.events
        self.date = dailyEvents.date
        
        let dateFormatter = DateFormatter()
        dateFormatter.locale = Locale(identifier: "fr_FR")
        dateFormatter.dateFormat = "EEEE dd MMMM yyyy"
        self.dateString = dateFormatter.string(from: dailyEvents.date).capitalized
    }
}
