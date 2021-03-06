//
//  LandmarkRow.swift
//  Landmarks
//
//  Created by John Walter on 2021-07-08.
//  Copyright © 2021 Apple. All rights reserved.
//

import SwiftUI

struct LandmarkRow: View {
    
    var landmark: Landmark
    
    var body: some View {
        HStack {
            landmark.image
                .resizable()
                .frame(width: 50, height: 50)
            Text(landmark.name)
            
            Spacer()
        }
    }
}

struct LandmarkRow_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            LandmarkRow(landmark: landmarks[0])
            LandmarkRow(landmark: landmarks[1])
                
        }.previewLayout(.fixed(width: 300, height: 70))
    }
}
