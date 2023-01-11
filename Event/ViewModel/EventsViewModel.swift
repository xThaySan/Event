//
//  SearchEventViewModel.swift
//  Event
//
//  Created by user231561 on 1/11/23.
//

import Foundation

class EventsViewModel: ObservableObject   {
    @Published var filteredEvents: [Event] = []
    var events: [Event] = []
    var filterInput: String = ""
    var selectedFilter: String = "activity"

    init(events: [Event]) {
        self.events = events
        self.updateFilter()
    }

    func updateFilter() {
        self.filteredEvents = events.filter { event in
            return (
               self.selectedFilter == "activity" && event.fields.activity.lowercased().contains(self.filterInput.lowercased())
            || self.selectedFilter == "type" && (event.fields.type.lowercased().contains(self.filterInput.lowercased()))
            || self.selectedFilter == "location" && (event.fields.location.lowercased().contains(self.filterInput.lowercased()))
            || self.filterInput.isEmpty)
        }
    }
}
