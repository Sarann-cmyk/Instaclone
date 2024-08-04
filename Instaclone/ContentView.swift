//
//  ContentView.swift
//  Instaclone
//
//  Created by Aleks Synelnyk on 25.07.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            navigationBar
        }
    }
    
    var navigationBar: some View {
        HStack {
            Image("instagram")
                .resizable()
                .frame(width:  165, height: 65)
            
            Spacer()
            
            HStack(spacing: 26) {
                
                
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                    Image(systemName: "plus.app")
                    
                }
                
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                    Image(systemName: "heart")
                    
                }
                
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                    Image(systemName: "paperplane")
                    
                }
            }
            .foregroundColor(.black)
        }
        .padding(.horizontal, 20)
    }
}
    
    
    struct StoryCollectionView: View {
        var body: some View {
            ZStack {
                Circle()
                    .border(Color.white, width: 2)
            Image("001")
                .resizable()
                .clipped()
                .border(Color.white, width: 2)
                .scaledToFill()
                .cornerRadius(100)
        }
            .frame(width: 66, height: 66)
    }
}
    
    struct ContentView_Previews:  PreviewProvider {
        static var previews: some View {
            ContentView()
                .previewDevice("iPhone 13")
            StoryCollectionView()
                .previewDevice("iPhone 13")
        }
    }

