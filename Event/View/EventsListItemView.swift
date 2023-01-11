//
//  EventListRowView.swift
//  Event
//
//  Created by user231561 on 1/10/23.
//

import SwiftUI

struct EventsListItemView: View {
    @ObservedObject var viewModel: EventsListItemViewModel
    
    var body: some View {
        NavigationLink {
            EventDetailView(viewModel: EventDetailViewModel(event: viewModel.event))
        } label: {
            VStack() {
                HStack(alignment: .top) {
                    Text(viewModel.event.fields.activity)
                        .fontWeight(.bold)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .multilineTextAlignment(.leading)
                    Text(viewModel.startTime + " - " + viewModel.endTime)
                        .frame(alignment: .trailing)
                }
                HStack {
                    Text(viewModel.event.fields.type)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .backgroundStyle(.red)
                }
            }
            .layoutPriority(1)
            .padding(.vertical, 20)
            .padding(.horizontal)
            .overlay(
                RoundedRectangle(cornerRadius: 5)
                    .stroke(.black, lineWidth: 1)
            )
        }
    }
}

struct EventsListItemView_Previews: PreviewProvider {
    static var previews: some View {
        EventsListItemView(viewModel: EventsListItemViewModel(event: Event(id: "recLDfzf0WinVqRCx", createdTime: "2016-10-30T21:17:58.000Z", fields: Fields(activity: "Opening remarks", type: "Keynote", start: Date(timeIntervalSince1970: 1675861200), end: Date(timeIntervalSince1970: 1675863000), location: "Emerald room", notes: "Katina is subbing in for Russell, because he's coming in on a flight", speakers: ["recMsLQRE21DymLru", "recS22dk8RoplL1pN"]))))
    }}
