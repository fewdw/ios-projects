//
//  CreateHypeEventView.swift
//  Hyped
//
//  Created by macuser on 2022-10-04.
//

import SwiftUI

struct CreateHypeEventView: View {
    @Environment(\.presentationMode) var presentationMode
    
    var data = DataService.shared
    
    @StateObject var hypeEvent = HypeEvent()
    @State var showTime = false
    @State var showImagePicker = false
    
    var body: some View {
        NavigationView{
            Form{
                
                Section{
                    FormLabelView(title: "Title", iconName: "keyboard", color:.green)
                    TextField("Family Vacation",text:$hypeEvent.title)
                        .autocapitalization(.words)
                }
                
                Section{
                    FormLabelView(title: "Date", iconName: "calendar")
                    DatePicker("Date",selection: $hypeEvent.date,displayedComponents: showTime ? [.date,.hourAndMinute] : [.date])
                        .datePickerStyle(GraphicalDatePickerStyle())
                    Toggle(isOn: $showTime){
                        FormLabelView(title:"Time", iconName: "clock.fill")
                    }.tint(.blue)
                }
                
                Section{
                    FormLabelView(title: "Color", iconName: "eyedropper",color: .yellow)//$hypeEvent.color
                    
                    ColorPicker("Color", selection: $hypeEvent.color)
                }
                
                Section{
                    FormLabelView(title: "Website", iconName: "link",color: .orange)
                    TextField("http://amazon.com",text: $hypeEvent.url)
                        .autocapitalization(.none)
                        .keyboardType(.URL)
                }
                
                Section{
                    HStack{
                        FormLabelView(title: "Image", iconName: "camera",color: .purple)
                        
                        Spacer()
                        
                        if hypeEvent.imageData == nil{
                            Button(action: {showImagePicker=true}){
                                Text("Pick an Image")
                            }
                            .sheet(isPresented: $showImagePicker){
                                ImagePicker(imageData: $hypeEvent.imageData)
                            }
                        }
                    }
                    if hypeEvent.imageData != nil {
                        Button(action: {hypeEvent.imageData=nil}){
                            Text("Remove an image")
                                .foregroundColor(.red)
                        }
                        hypeEvent.image()!
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                    }
                    
                }
            }
            .navigationBarItems(leading: Button(action: {
                //cancel action
                presentationMode.wrappedValue.dismiss()
            }){
                Text("Cancel")
            }, trailing: Button(action:{
                //done action
                DataService.shared.hypeEvents.append(hypeEvent)
                presentationMode.wrappedValue.dismiss()
            }){
                Text("Done")
            })
        }
    }
}

struct CreateHypeEventView_Previews: PreviewProvider {
    static var previews: some View {
        CreateHypeEventView()
    }
}
