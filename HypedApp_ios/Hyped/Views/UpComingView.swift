//
//  UpComingView.swift
//  Hyped
//
//  Created by macuser on 2022-10-04.
//

import SwiftUI

struct UpComingView: View {
    
    @ObservedObject var data = DataService.shared
    //var hypeEvents: [HypeEvent] = []
    @State var showingCreateView: Bool = false
    
    var body: some View {
        ScrollView{
            VStack{
                
                if data.hypeEvents.count == 0 {
                    Text("Nothing to look forward to, \nCreate an event or checkout the discover tab")
                        .multilineTextAlignment(.center)
                }else{
                    Text("upcoming view")
                    
                    ForEach(data.hypeEvents){ hypeEvent in
                        HypeEventTileView(hypeEvent: hypeEvent)
                    }
                    
                }
            }
        }
            .navigationTitle("Up Coming")
            .navigationBarItems(trailing:
                                    Button(action:{
                showingCreateView = true
                
            }){
                Image(systemName: "calendar.badge.plus")
                    .font(.title)
            }
                .sheet(isPresented: $showingCreateView) {
                    CreateHypeEventView()
                })
        }
        
        

}

