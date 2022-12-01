//
//  ContentView.swift
//  Memorize
//
//  Created by Fahad Khan on 11/8/22.
//

import SwiftUI

struct ContentView: View {
    @State var cards = ["🚲", "🚂", "🚁", "🚜", "🚕", "🏎️", "🚑", "🚓", "🚒", "✈️", "🚀", "⛵️", "🛸", "🛶", "🚌", "🏍️", "🛺", "🚠", "🛵", "🚗", "🚚", "🚇", "🛻", "🚝"]
    @State var vehicles = ["🚲", "🚂", "🚁", "🚜", "🚕", "🏎️", "🚑", "🚓", "🚒", "✈️", "🚀", "⛵️", "🛸", "🛶", "🚌", "🏍️", "🛺", "🚠", "🛵", "🚗", "🚚", "🚇", "🛻", "🚝"]
    @State var nums = ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24"]
    @State var flags = ["🇺🇸", "🇸🇦", "🇨🇳", "🏁", "🇻🇳", "🇬🇧", "🇹🇷", "🇰🇷", "🇧🇩", "🇵🇰", "🇶🇦", "🇰🇼", "🇹🇳", "🇱🇹", "🇮🇩", "🇦🇫", "🇲🇻", "🇵🇼", "🚩", "🇳🇵", "🇨🇰", "🇨🇦", "🏴‍☠️", "🏴"]
    @State var cardCount = 24
    
    var body: some View {
        VStack {
            Text("Memorize!")
                .font(.largeTitle)
            ScrollView {
                LazyVGrid (columns: [GridItem(.adaptive(minimum: 75))]) {
                    ForEach(cards[0..<cardCount], id: \.self) { card in
                        CardView(content: card)
                            .aspectRatio(2/3, contentMode: .fit)
                    }
                    .foregroundColor(.red)
                }
            }
            Spacer()
            HStack {
                VStack {
                    Button {
                        cards = vehicles.shuffled()
                    } label: {
                        Image(systemName: "car")
                    }
                    Text("Vehicles")
                        .font(.footnote)
                        .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                        
                }
                Spacer()
                VStack {
                    Button {
                        cards = nums.shuffled()
                    } label: {
                        Image(systemName: "number")
                    }
                    Text("Numbers")
                        .font(.footnote)
                        .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                        
                }
                Spacer()
                VStack {
                    Button {
                        cards = flags.shuffled()
                    } label: {
                        Image(systemName: "flag")
                    }
                    Text("Flags")
                        .font(.footnote)
                        .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                        
                }
            }
            
            .font(.largeTitle)
            .padding(.horizontal, 50)
        }
        .padding(.horizontal)
    }
}

struct CardView: View {
    var content: String
    @State var isFaceUp: Bool = true
    
    var body: some View {
        ZStack {
            let shape = RoundedRectangle(cornerRadius: 20)
            if isFaceUp {
                shape.fill().foregroundColor(.white)
                shape.strokeBorder(lineWidth: 3)
                Text(content).font(.largeTitle)
            } else {
                shape.fill()
            }
        }
        .onTapGesture {
            isFaceUp = !isFaceUp
        }
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
        ContentView()
            .preferredColorScheme(.light)
    }
}
