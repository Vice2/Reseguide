//
//  HogevallsbadetView.swift
//  Reseguide
//
//  Created by Bashar Al Bagdadi on 2021-12-15.
//

import SwiftUI
import MapKit
import CoreLocation
import CoreLocationUI

struct HogevallsbadetView: View {
    
        @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 55.700736991551025, longitude: 13.184539298290568), span: MKCoordinateSpan(latitudeDelta: 0.002, longitudeDelta: 0.002))
    
        let data = (1...100).map { "Item \($0)" }

        let columns = [GridItem(.adaptive(minimum: 80))]

    
    var body: some View {
        VStack {
            Image("aventyrsbadet_bred")
                .padding(.top, 10.0)
                .clipShape(RoundedRectangle(cornerRadius: 25.0))
                .shadow(color: .black, radius: 10.0, x: 0, y: 0)
            
            VStack {
                
                Text("Öppettider")
                    .font(.title)
                HStack {
                    VStack {
                        
                        Text("Receptionen: ")
                        Text("Äventyret: ")
                        Text("Motionssimning")
                        Text("06.30-20.00 måndag och tisdag")
                        Text("12.00-20.00 onsdag")
                        Text("06.30-19.00 torsdag och fredag")
                        Text("08.00-15.00 lördag och söndag")
                    }
                    .frame(width: 150, alignment: .trailing)
                    VStack {
                        Text("7-20 vardagar, 8-18 helger")
                        Text("11-19 vardagar, stängt onsdagar, 9-18 helger")
                        Text("Vardag")
                        Text("Andra dag")
                        Text("Helger")
                        Text("Lov")
                    }
                    .frame(width: 150, alignment: .trailing)
                    
                }.padding()
                
                Text("Karta")
                    .fontWeight(.bold)
                
                Map(coordinateRegion: $region)
                            .frame(width: 400, height: 300)
                            .cornerRadius(30)
                            .shadow(color: .black, radius: 10, x: 0, y: 0)
            }
            
            Spacer()
        }
        
    }
    
    
}

struct HogevallsbadetView_Previews: PreviewProvider {
    static var previews: some View {
        HogevallsbadetView()
    }
}
