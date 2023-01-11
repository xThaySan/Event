//
//  EventViewModel.swift
//  Event
//
//  Created by user231561 on 1/9/23.
//

import Foundation

class EventsListViewModel: ObservableObject   {
    @Published var allDailyEvents: [DailyEvents] = []

    init(events: [Event]) {
        for event in events {
            let date = event.fields.start.stripTime()
            var index = self.allDailyEvents.firstIndex{$0.date == date}
            if index == nil {
                index = self.allDailyEvents.count
                self.allDailyEvents.append(DailyEvents(events: [], date: date))
            }
            self.allDailyEvents[index!].events.append(event)
        }
        for (index, _) in self.allDailyEvents.enumerated() {
            self.allDailyEvents[index].events = self.allDailyEvents[index].events.sorted(by: { $0.fields.start.compare($1.fields.start) == .orderedAscending })
        }
    }
}

