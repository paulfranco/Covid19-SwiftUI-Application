//
//  MapContainerView.swift
//  Covid19
//
//  Created by Paul Franco on 7/12/20.
//

import SwiftUI

struct MapContainerView: View {
    
    @ObservedObject var covidFetch = CovidFetchRequest()
    
    var body: some View {
        MapView(countryData: $covidFetch.allCountries)
        
    }
}

struct MapContainerView_Previews: PreviewProvider {
    static var previews: some View {
        MapContainerView()
    }
}
