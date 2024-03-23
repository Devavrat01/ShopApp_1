//
//  ContentView.swift
//  ShopApp
//
//  Created by Devavrat Upadhyay on 22/03/24.
//

import SwiftUI

struct ContentView: View {
//     function calling cartManager
    @StateObject var cartManager = CartManager()
    var columns = [GridItem(.adaptive(minimum: 160), spacing: 20)]
    var body: some View {
        NavigationView{
            ScrollView {
                LazyVGrid(columns : columns ,spacing: 20){
                    ForEach(productList, id: \.id){
                        product in ProductCard(product: product)
                            .environmentObject(cartManager)
                    }
                }
                .padding()
            }
            .navigationTitle("Sweater Shop")
            .toolbar{
                NavigationLink{
                    CartView()
                        .environmentObject(cartManager)
                } label: {
                    CartButton(numberofProduct: cartManager.products.count )
                }
               
            }
        }
        
        .navigationViewStyle(StackNavigationViewStyle())
//        VStack {
//            Image(systemName: "globe")
//                .imageScale(.large)
//                .foregroundStyle(.tint)
//           
        }
//        .padding()
    }


#Preview {
    ContentView()
}
