//
//  EventDetailView.swift
//  Event
//
//  Created by user231561 on 1/10/23.
//

import SwiftUI

struct EventDetailView: View {
    private let viewModel: EventDetailViewModel
    
    init(viewModel: EventDetailViewModel) {
        self.viewModel = viewModel
    }
    
    var body: some View {
        ScrollView(.vertical) {
            VStack(alignment: .leading, spacing: 30) {
                VStack(alignment: .leading) {
                    Text(viewModel.title)
                        .font(.title)
                        .fontWeight(.bold)
                        .multilineTextAlignment(.leading)
                    Text(viewModel.type)
                        .font(.headline)
                        .multilineTextAlignment(.leading)
                }
                    
                VStack(alignment: .leading) {
                    Text("Horaire :")
                        .fontWeight(.bold)
                    Text(viewModel.date)
                }
                
                VStack(alignment: .leading) {
                    Text("Localisation :")
                        .fontWeight(.bold)
                    Text(viewModel.location)
                }
                
                VStack(alignment: .leading) {
                    Text("Notes :")
                        .fontWeight(.bold)
                    Text(viewModel.notes)
                        .italic(!viewModel.notesExist)
                }
                
                VStack(alignment: .leading) {
                    Text("Annonceurs :")
                        .fontWeight(.bold)
                    ForEach (viewModel.speakers, id: \.self) { speaker in
                        Text(speaker)
                            .font(.body)
                            .frame(maxWidth: .infinity)
                            .padding()
                            .background(.black)
                            .foregroundColor(.white)
                            .fontWeight(.bold)
                    }
                }
                
            }
            .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            .frame(maxWidth: .infinity, alignment: .leading)
        }
    }
}

struct EventDetailView_Previews: PreviewProvider {
    static var previews: some View {
        EventDetailView(viewModel: EventDetailViewModel(event: Event(id: "recLDfzf0WinVqRCx", createdTime: "2016-10-30T21:17:58.000Z", fields: Fields(activity: "Opening remarks", type: "Keynote", start: Date(timeIntervalSinceReferenceDate: 1675861200), end: Date(timeIntervalSinceReferenceDate: 1675863000), location: "Emerald room", notes: "Katina is subbing in for Russell, because he's coming in on a flight", speakers: ["test1", "test2"]))))
    }
}
