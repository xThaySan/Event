//
//  EventDetailView.swift
//  Event
//
//  Created by user231561 on 1/10/23.
//

import SwiftUI

struct DailyEventView: View {
    var viewModel: DailyEventsViewModel
    
    init(viewModel: DailyEventsViewModel) {
        self.viewModel = viewModel
    }
    
    var body: some View {
        VStack(spacing: 0) {
            Text(viewModel.dateString)
                .fontWeight(.bold)
                .padding()
                .frame(maxWidth: .infinity)
                .font(.title2)
                .background(Color(red: 0, green: 0, blue: 0))
                .foregroundColor(.white)
            ScrollView {
                ForEach(viewModel.events, id: \.id) { event in
                    EventsListItemView(viewModel: EventsListItemViewModel(event: event))
                }
            }
            .padding(.top, 5)
        }
    }
}

struct DailyEventView_Previews: PreviewProvider {
    static var eventData: EventData = EventData()
    static var previews: some View {
        ContentView().environmentObject(eventData)
    }
}
