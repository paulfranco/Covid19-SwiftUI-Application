//
//  CountryDataRowView.swift
//  Covid19
//
//  Created by Paul Franco on 7/10/20.
//

import SwiftUI

struct CountryDataRowView: View {
    
    var countryData: CountryData
    
    var body: some View {
        
        HStack {
            Text(countryData.country)
                .fontWeight(.medium)
                .font(.subheadline)
                .lineLimit(/*@START_MENU_TOKEN@*/2/*@END_MENU_TOKEN@*/)
                .frame(width: 100, alignment: .leading)
            
            Spacer()
            
            Text(countryData.confirmed.formatNumber())
                .font(.custom("small", fixedSize: 11.0))
                .frame(width: 50, height: 40, alignment: .center)
                .padding(.leading, 5)
            
            Spacer()
            
            Text(countryData.deaths.formatNumber())
                .frame(width: 50, height: 40, alignment: .center)
                .font(.custom("small", fixedSize: 11.0))
                .foregroundColor(.red)
                .padding(.leading, 5)
            
            Spacer()
            
            Text(countryData.recovered.formatNumber())
                .frame(width: 50, height: 40, alignment: .center)
                .font(.custom("small", fixedSize: 11.0))
                .foregroundColor(.green)
        }
    }
}

struct CountryDataRowView_Previews: PreviewProvider {
    static var previews: some View {
        CountryDataRowView(countryData: testCountryData)
    }
}
