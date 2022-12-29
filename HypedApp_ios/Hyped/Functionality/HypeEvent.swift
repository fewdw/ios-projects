//
//  HypeEvent.swift
//  Hyped
//
//  Created by macuser on 2022-10-04.
//

import SwiftUI
import SwiftDate
import UIColorHexSwift

class HypeEvent : ObservableObject , Identifiable, Codable{
    var id = UUID().uuidString
    var date = Date()
    var title = ""
    var url = ""
    var color = Color.purple
    @Published var imageData: Data?
    
    
    enum CodingKeys: String, CodingKey{
        case id
        case date
        case title
        case url
        case color
        case imageData
    }
    
    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try container.encode(id, forKey: .id)
        try container.encode(date, forKey: .date)
        try container.encode(title, forKey: .title)
        try container.encode(url, forKey: .url)
        try container.encode(UIColor(color).hexString(), forKey: .color)
        try container.encode(imageData, forKey: .imageData)
    }
    
    required init(from decoder: Decoder) throws{
        let values = try decoder.container(keyedBy: CodingKeys.self)
        
        id = try values.decode(String.self,forKey:.id)
        date = try values.decode(Date.self,forKey:.date)
        title = try values.decode(String.self,forKey:.title)
        url = try values.decode(String.self,forKey:.url)
        
        let colorHex = try values.decode(String.self,forKey: .color)
        color = Color(UIColor(colorHex))
        
        imageData = try? values.decode(Data.self,forKey:.imageData)
    
    }
    
    init(){
        
    }
    
    func image() -> Image? {
        if let data = imageData{
            if let uiImage = UIImage(data: data){
                return Image(uiImage: uiImage)
            }
        }
        return nil
    }
    
    func dateAsString() -> String{
        let formatter = DateFormatter()
        
        if(date.compare(.isThisYear)){
            formatter.dateFormat = "MMM d"
        }
        else{
            formatter.string(from: date)
        }
        return formatter.string(from: date)
    }
    
    func timeFromNow() -> String{
        return date.toRelative(since: Date().inDefaultRegion())
    }
}


//test data with image
var testHypeEvent1: HypeEvent{
    let hypeEvent = HypeEvent()
    
    
    if let image = UIImage(named: "wwdc"){
        if let data = image.pngData(){
            hypeEvent.imageData = data
        }
    }
    hypeEvent.title = "wwdc 2022"
    hypeEvent.color = .green
    hypeEvent.date = Date() + 4.days + 1.years
    hypeEvent.url = "apple.com"
    
    return hypeEvent
}


//test data without image
var testHypeEvent2: HypeEvent{
    let hypeEvent = HypeEvent()

    hypeEvent.title = "family trip"
    hypeEvent.color = .red
    hypeEvent.date = Date() + 2.hours + 23.minutes
    hypeEvent.url = "apple.com"
    
    return hypeEvent
}
