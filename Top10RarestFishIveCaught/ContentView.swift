//
//  ContentView.swift
//  Top10RarestFishIveCaught
//
//  Created by Jacobson, Machiah - Student on 9/8/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView{
            ZStack{
            Image("man")
                .resizable()
                .aspectRatio(contentMode: .fit)
                Text("Top 10")
                    .font(.system(size: 47))
                    .font(.title)
                    .padding(.init(top: -120, leading: 200, bottom: 20, trailing: 50))
                    .fontWeight(.black)
                Text("Rarest Fish I've Ever Caught")
                    .fontDesign(.rounded)
                    .font(.system(size: 40))
                    .padding(.init(top: 150, leading: 180, bottom: 0, trailing: 10))
                    .fontWeight(.black)

            }

                
            Cardview(fish: "bluegill", text: "Bluegill", title: "Catch count: #125-150", rank: "#10")
            Cardview(fish: "bass", text: "Largemouth Bass", title: "#Catch count: 100-125", rank: "#9")
            Cardview(fish: "Rainbow trout", text: "Rainbow Trout", title: "Catch count: #75-100", rank: "#8")
            Cardview(fish: "smallmouth bass", text: "Smallmouth Bass", title: "Catch count: #50-75", rank: "#7")
            Cardview(fish: "trout", text: "Brown Trout", title: "Catch count: #50-75", rank: "#6")
            Cardview(fish: "pike", text: "Northern Pike", title: "Catch count: #25-50", rank: "#5")
            Cardview(fish: "walleye", text: "Walleye", title: "Catch count: #15-25", rank: "#4")
            Cardview(fish: "catfish", text: "Channel Catfish", title: "Catch count: #10-15", rank: "#3")
            Cardview(fish: "carp", text: "Carp", title: "Catch count: #5-10", rank: "#2")
            Cardview(fish: "Barracuda", text: "Barracuda", title: "Catch count: #1", rank: "#1")
        }
    }
}

#Preview {
    ContentView()
}

struct Cardview: View {
    var fish: String
    var text: String
    var title: String
    var rank: String
    var body: some View {
        VStack{
            Image(fish)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .border(Color.gray)
            HStack{
                VStack (alignment: .leading){
                    Text(text)
                        .font(.title)
                        .fontWeight(.black)
                    Text(title)
                        .font(.headline)
                        .foregroundStyle(.red)
                   
                 
                }
                Spacer()
                Text(rank)
                    .fontWeight(.black)
                    .foregroundStyle(.gray)
                    .font(.title)
            }
            .padding()
        }
        .cornerRadius(10)
        .overlay(
            RoundedRectangle(cornerRadius: 10)
                .stroke(Color.blue)
        )
        .padding([.top, .horizontal])
    }
}
