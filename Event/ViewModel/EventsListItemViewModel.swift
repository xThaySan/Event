//
//  EventListRowViewModel.swift
//  Event
//
//  Created by user231561 on 1/10/23.
//

import Foundation
import UIKit

class EventsListItemViewModel: ObservableObject {
    @Published var event: Event
    @Published var startTime: String = ""
    @Published var endTime: String = ""
    @Published var mealColor = UIColor(.red)
    
    init(event: Event) {
        self.event = event
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "HH:mm"
        self.startTime = dateFormatter.string(from: self.event.fields.start)
        self.endTime = dateFormatter.string(from: self.event.fields.end)
    }
}
