//
//  BottomTabView.swift
//  Hyped
//
//  Created by macuser on 2022-10-04.
//

import SwiftUI

struct BottomTabView: View {
    var body: some View {
        
        TabView{
            NavigationView{
                UpComingView()
            }
            .tabItem(){
                Label("UpComing",systemImage: "calendar")
            }
            NavigationView{
                DiscoverView()
                    .navigationTitle("Discover")
            }
            .tabItem(){
                Label("Discover",systemImage: "magnifyingglass")
            }
            
            NavigationView{
                PastView()
            }
            .tabItem(){
                Label("Past",systemImage: "gobackward")
            }
            
            
            
            
            /*
            TabView{
                DiscoverView()
                .tabItem {
                Label("Discover", systemImage: "calendar")
                }
                UpComingView()
                .tabItem {
                Label("Upcoming", systemImage: "magnifyingglass")
                }
                PastView()
                .tabItem {
                Label("Past", systemImage: "arrow.uturn.backward")
                }
            }*/
        }

    }
}

struct BottomTabView_Previews: PreviewProvider {
    static var previews: some View {
        BottomTabView()
    }
}
