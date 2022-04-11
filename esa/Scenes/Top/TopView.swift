//
//  TopView.swift
//  esa
//  
//  Created by TakashiUshikoshi on 2022/04/12
//  
//

import SwiftUI

struct TopView: View {
    var body: some View {
        List {
            
        }
        .toolbar {
            ToolbarItem(placement: .navigationBarTrailing) {
                Button(action: {
                    
                }) {
                    Image(systemName: "person.circle")
                }
            }
        }
        .navigationTitle("Team")
    }
}

struct TopView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            TopView()
        }
    }
}
