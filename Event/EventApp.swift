//
//  EventApp.swift
//  Event
//
//  Created by user231561 on 1/9/23.
//

import SwiftUI

@main
struct EventApp: App {
    @State var eventData: EventData = EventData()
    
    var body: some Scene {
        WindowGroup {
            LaunchScreen()
                .environmentObject(self.eventData)
        }
    }
}
