//
//  LocationDetailView.swift
//  DubDubGrub
//
//  Created by Danny Cummings on 27/06/2021.
//

import SwiftUI

struct LocationDetailView: View {
    
    var text: String
    var body: some View {
        Text(text)
    }
}

struct LocationDetailView_Previews: PreviewProvider {
    static var previews: some View {
        LocationDetailView(text: "Hi")
    }
}
