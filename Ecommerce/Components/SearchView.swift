//
//  SearchView.swift
//  Ecommerce
//
//  Created by User on 17/03/24.
//

import SwiftUI

struct SearchView: View {
    @State private var search = ""
    
    var body: some View {
        HStack {
            HStack {
                Image(systemName: "magnifyingglass")
                    .padding(.leading)
                
                TextField("Search for furniture", text: $search)
                    .padding()
                
            }
            .background(Color(.systemGray6))
            .cornerRadius(12)
            
            Image(systemName: "camera")
                .padding()
                .foregroundColor(.black)
                .background(Color(.systemGray6))
                .cornerRadius(12)
        }
        .padding(.horizontal)
    }
}

#Preview {
    SearchView()
}
