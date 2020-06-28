//
//  SandwichDetail.swift
//  MMApptest2
//
//  Created by Kenneth Jackson on 6/24/20.
//

import SwiftUI

struct InventoryDetail: View {
    let item: Inventory
    @State private var zoomed = false
    
    var body: some View {
        VStack {
            Image(item.thumbnailName)
                .resizable()
                .cornerRadius(20)
                .aspectRatio(contentMode: zoomed ? .fill : .fit)
                .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/, /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                .onTapGesture {
                    withAnimation {
                        zoomed.toggle()
                    }
                }
            Text(item.name)
                .font(.title)
                .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/, /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
            Text(item.description)
                .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/, /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
            Text("$\(item.price, specifier: "%.2f")")
                .font(.largeTitle)
                .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/, /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
            
            Spacer(minLength: 0)
            
            if item.isSpicy && !zoomed {
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
        .navigationTitle(item.name)
        .edgesIgnoringSafeArea(.bottom)
    }
}

struct ItemDetail_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            NavigationView {
                InventoryDetail(item: testData[0])
            }
            NavigationView {
                InventoryDetail(item: testData[4])
            }
        }
    }
}
