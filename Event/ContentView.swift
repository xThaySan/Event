//
//  ContentView.swift
//  Event
//
//  Created by user231561 on 1/9/23.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var eventData: EventData
    
    var body: some View {
        TabView() {
            EventsView(events: self.eventData.events)
                .tabItem() {
                    Image(systemName: "calendar")
                    Text("Rechercher")
                }
            CGUView()
                .tabItem() {
                    Image(systemName: "lock.shield")
                    Text("CGU")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var eventData: EventData = EventData()
    static var previews: some View {
        ContentView().environmentObject(eventData)
    }
}
