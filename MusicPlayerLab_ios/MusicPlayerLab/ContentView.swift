//
//  ContentView.swift
//  MusicPlayerLab
//
//  Created by macuser on 2022-09-20.
//

import SwiftUI
import AVFAudio

struct ContentView: View {
    
    @EnvironmentObject var musicplayer:MusicPlayer
    
    var body: some View {
        NavigationView{
            
            VStack{
                ScrollView(.horizontal){
                    
                    HStack{
                        SongView(songName: "song1", imagePic: "childhood")
                        SongView(songName: "song2", imagePic: "manhood")
                        SongView(songName: "song3", imagePic: "oldage")
                        SongView(songName: "song4", imagePic: "youth")
                    }
                }.padding(30)
            
            HStack{
                PlayButton()
                PauseButton()
                StopButton()
            }
            }
            .navigationTitle("fred music app")
        }

            
        }

    }

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

