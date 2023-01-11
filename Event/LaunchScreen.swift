//
//  PrelLaunch.swift
//  Event
//
//  Created by user231561 on 1/10/23.
//

import SwiftUI

struct LaunchScreen: View {
    @EnvironmentObject var eventData: EventData
    @State var scale: CGSize = CGSize(width: 1, height: 1)
    @State var opacity: Double = 1
    
    var body: some View {
        ZStack {
            if eventData.error {
                ZStack {
                    Color(.black)
                        .edgesIgnoringSafeArea(.all)
                    VStack(alignment: .center) {
                        Text("Une erreur est survenue")
                            .font(.title)
                            .fontWeight(.black)
                            .foregroundColor(Color.red)
                        Text("Veuillez redémarrer l'application")
                            .font(.body)
                            .fontWeight(.bold)
                            .foregroundColor(Color.red)
                    }
                }
            } else if eventData.loaded {
                    ContentView()
                        .environmentObject(self.eventData)
            } else {
                ZStack {
                    Color(.black)
                        .edgesIgnoringSafeArea(.all)
                    Text("EventApp")
                        .font(.title)
                        .fontWeight(.black)
                        .foregroundColor(Color.white)
                        .opacity(self.opacity)
                        .scaleEffect(self.scale)
                }
                .onAppear() {
                    withAnimation(Animation.easeInOut(duration: 0.5).repeatForever()) {
                        self.scale = CGSize(width: 1.1, height: 1.1)
                        self.opacity = 1
                    }
                }
            }
        }
        
    }
}

struct LaunchScreen_Previews: PreviewProvider {
    static var eventData: EventData = EventData()
    static var previews: some View {
        LaunchScreen().environmentObject(eventData)
    }
}
