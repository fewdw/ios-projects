//
//  FormLabelView.swift
//  Hyped
//
//  Created by macuser on 2022-10-04.
//

import SwiftUI

struct FormLabelView: View {
    
    var title: String = "Label"
    var iconName: String = "photo"
    var color: Color = .blue
    
    var body: some View {
        Label{
            Text(title)
        }icon:{
            Image(systemName: iconName)
                .padding(4)
                .background(color)
                .cornerRadius(7)
                .foregroundColor(.white)
        }
    }
}

struct FormLabelView_Previews: PreviewProvider {
    static var previews: some View {
        FormLabelView()
    }
}
