//
//  CartView.swift
//  ShopApp
//
//  Created by Devavrat Upadhyay on 22/03/24.
//

import SwiftUI

struct CartView: View {
    @EnvironmentObject var cartManger :CartManager
    
    var body: some View {
        ScrollView{
            if cartManger.paymentSuccess{
                 Text (" Thanks for your purchase ! You Will get cazy in our  comfy sweters soon!")
                    .padding()
                 
            } else{
                
                if cartManger.products.count>0{
                    ForEach(cartManger.products, id: \.id){
                        product in
                        ProductRow(product: product)
                    }
                    HStack{
                        Text("Your cart total is")
                        Spacer()
                        Text("$ \(cartManger.total).00")
                            .bold()
                    }
                    .padding()
                    PaymentButton(action: cartManger.pay)
                        .padding()
                } else{
                    Text("You cart is empty")
                }
            }
            
            
        }
        .navigationTitle(Text("My Cart"))
        .padding(.top)
        .onDisappear{
            if cartManger.paymentSuccess {
                cartManger.paymentSuccess = false
            }
        }
        
    }
}

#Preview {
    CartView()
        .environmentObject(CartManager())
}
