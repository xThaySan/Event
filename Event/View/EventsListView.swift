//
//  EventsListView.swift
//  Event
//
//  Created by user231561 on 1/9/23.
//

import SwiftUI

struct EventsListView: View {
    @ObservedObject var viewModel: EventsListViewModel
    
    init(events: [Event]) {
        self.viewModel = EventsListViewModel(events: events)
    }
    
    var body: some View {
        NavigationView {
            ZStack {
                ScrollView {
                    ForEach(self.viewModel.allDailyEvents, id: \.date.hashValue) { dailyEvents in
                        DailyEventView(viewModel: DailyEventsViewModel(dailyEvents: dailyEvents))
                    }
                }
            }
            .navigationTitle("Evènements")
        }
    }
}

struct EventsListView_Previews: PreviewProvider {
    static var eventData: EventData = EventData()
    static var previews: some View {
        ContentView().environmentObject(eventData)
    }
}
