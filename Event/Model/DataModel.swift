//
//  DataModel.swift
//  Event
//
//  Created by user231561 on 1/11/23.
//

import Foundation

class EventData: ObservableObject {
    // Complete list of events
    @Published var events: [Event] = []
    
    // Events successfully fetched
    @Published var loaded: Bool = false
    
    // Error while fetching events
    @Published var error: Bool = false
    
    init() {
        let baseID = "appLxCaCuYWnjaSKB"
        let tableName = "tblon3PzkaCkPGUnr"
        let apiKey = "keymaCPSexfxC2hF9"

        let url = URL(string: "https://api.airtable.com/v0/\(baseID)/\(tableName)")!
        print("Request")
            
        var request = URLRequest(url: url)
        request.addValue("Bearer \(apiKey)", forHTTPHeaderField: "Authorization")

        let decoder = JSONDecoder()
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss.SSS'Z'"
        decoder.dateDecodingStrategy = .formatted(dateFormatter)

        URLSession.shared.dataTask(with: request, completionHandler: { data, response, error in
            DispatchQueue.main.async {
                if let data = data {
                    do {
                        self.events = try decoder.decode(EventResponse.self, from: data).records
                        // Fake delay to show the loading animation (UX design)
                        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                            self.loaded = true
                        }
                    } catch let error {
                        self.error = true
                        print("Couldn't fetch data from API:\n\(error)")
                    }
                }
            }
        }).resume()
    }
}
