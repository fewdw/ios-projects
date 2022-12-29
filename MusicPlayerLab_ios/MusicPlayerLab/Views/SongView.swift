//
//  SongView.swift
//  MusicPlayerLab
//
//  Created by macuser on 2022-09-20.
//

import SwiftUI
import AVKit


struct SongView: View {

    var songName:String
    var imagePic:String
    @EnvironmentObject var musicplayer:MusicPlayer

    
    var body: some View {


        ZStack{

            //imagePic
            Image(imagePic)
                .resizable()
                .frame(width: 200, height: 200)
            

            HStack{
                //songName
                VStack{
                    Text(songName)
                        .foregroundColor(.black)
                        .font(.subheadline)
                        .padding(3)
                        .background(.white)
                        .cornerRadius(15)
                }

            }

                
            
        }.onTapGesture {
            print("tapping on \(songName)")
            musicplayer.playSound(fileName: songName)
        }

    }
}

struct SongView_Previews: PreviewProvider {
    static var previews: some View {
        SongView(songName: "", imagePic: "")
    }
}
