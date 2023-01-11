//
//  SearchEvent.swift
//  Event
//
//  Created by user231561 on 1/11/23.
//

import SwiftUI

struct EventsView: View {
    @ObservedObject var viewModel: EventsViewModel
    
    init(events: [Event]) {
        self.viewModel = EventsViewModel(events: events)
    }
    
    var body: some View {
        let inputBinding = Binding<String>(
            get: { self.viewModel.filterInput },
            set: {self.viewModel.filterInput = $0; self.viewModel.updateFilter()}
        )
        let selectionBinding = Binding<String>(
            get: { self.viewModel.selectedFilter },
            set: {self.viewModel.selectedFilter = $0; self.viewModel.updateFilter()}
        )
        VStack {
            EventsListView(events: self.viewModel.filteredEvents)
            HStack {
                TextField("Rechercher",text: inputBinding)
                Picker("", selection: selectionBinding) {
                    Text("Activité").tag("activity")
                    Text("Type").tag("type")
                    Text("Salle").tag("location")
                }
                Button(action: { self.viewModel.filterInput = "" }, label: { Image(systemName: "xmark.circle") })
            }
            .padding(EdgeInsets(top: 8, leading: 6, bottom: 8, trailing: 6))
            .background(Color(.secondarySystemBackground))
            .cornerRadius(10)
            .padding(.all)
            .shadow(radius: 5)
        }
    }
}

struct EventsView_Previews: PreviewProvider {
    static var eventData: EventData = EventData()
    static var previews: some View {
        ContentView().environmentObject(eventData)
    }
}
