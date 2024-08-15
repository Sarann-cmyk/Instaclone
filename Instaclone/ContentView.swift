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
            stories
            Spacer()
        }
    }
    
    var navigationBar: some View {
        HStack {
            Image("instagram")
                .resizable()
                .frame(width:  165, height: 65)
                .offset(CGSize(width: -20.0, height: 0.0))
            
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
    
    let storyCollections: [StoryCollection] = [
        .init(title: "Synelnyk", thumbnail: Image("001")),
        .init(title: "Synelnyk", thumbnail: Image("002")),
        .init(title: "Synelnyk", thumbnail: Image("003")),
        .init(title: "Synelnyk", thumbnail: Image("004")),
        .init(title: "Synelnyk", thumbnail: Image("005")),
        .init(title: "Synelnyk", thumbnail: Image("006")),]
    
    
    var stories: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                ForEach(storyCollections) { storyCollection in
                    StoryCollectionView(storyColletion: storyCollection)
                    
                }
            }
        }
    }
}

struct StoryCollection: Identifiable {
    var id: String {
        title
       }
    let title: String
    let thumbnail: Image
    
}
    
    struct StoryCollectionView: View {
        let storyColletion: StoryCollection
        var body: some View {
            ZStack {
                Circle()
                    .border(Color.white, width: 2)
                storyColletion.thumbnail
                .resizable()
                .clipped()
                .border(Color.white, width: 2)
                .scaledToFill()
                .cornerRadius(100)
        }
            .frame(width: 80, height: 80)
            .offset(CGSize(width: 10.0, height: 0.0))
    }
}
    
    struct ContentView_Previews:  PreviewProvider {
        static var previews: some View {
            ContentView()
                .previewDevice("iPhone 13")
           // StoryCollectionView()
             //   .previewDevice("iPhone 13")
        }
    }

