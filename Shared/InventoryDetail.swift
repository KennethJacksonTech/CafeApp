//
//  SandwichDetail.swift
//  MMApptest2
//
//  Created by Kenneth Jackson on 6/24/20.
//

import SwiftUI

struct InventoryDetail: View {
    let sandwich: Inventory
    @State private var zoomed = false
    
    var body: some View {
        VStack {
           //Spacer(minLength: 0)
            
            Image(sandwich.thumbnailName)
                .resizable()
                .cornerRadius(20)
                .aspectRatio(contentMode: zoomed ? .fill : .fit)
                .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/, /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                .onTapGesture {
                    withAnimation {
                        zoomed.toggle()
                    }
                }
            Text(sandwich.name)
                .font(.title)
                .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/, /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
            Text(sandwich.description)
                .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/, /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
            Text("$\(sandwich.price, specifier: "%.2f")")
                .font(.largeTitle)
                .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/, /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
            
            Spacer(minLength: 0)
            
            if sandwich.isSpicy && !zoomed {
                HStack {
                    Spacer()
                    Label("Spicy", systemImage: "flame.fill")
                    Spacer()
                }
                .padding(.all)
                .font(Font.headline.smallCaps())
                .background(Color.red)
                .foregroundColor(.yellow)
                .transition(.move(edge: .bottom))
            }
        }
        .navigationTitle(sandwich.name)
        .edgesIgnoringSafeArea(.bottom)
    }
}

struct SandwichDetail_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            NavigationView {
                InventoryDetail(sandwich: testData[0])
            }
            NavigationView {
                InventoryDetail(sandwich: testData[4])
            }
        }
    }
}
