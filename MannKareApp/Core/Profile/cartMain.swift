//
//  CartCheckoutView.swift
//  MannKareApp
//
//  Created by Azhar Bahleem on 24/04/24.
//

import SwiftUI

struct CartItem: Identifiable {
    let id: UUID = UUID()
    let name: String
    var quantity: Int
    let price: Double
}

class Cart: ObservableObject {
    @Published var items: [CartItem] = []
    
    func addItem(name: String, quantity: Int, price: Double) {
        let newItem = CartItem(name: name, quantity: quantity, price: price)
        items.append(newItem)
    }
    
    func removeItem(index: Int) {
        items.remove(at: index)
    }
    
    func updateQuantity(index: Int, quantity: Int) {
        items[index].quantity = quantity
    }
}

struct CartCheckoutView: View {
    @ObservedObject var cart: Cart
    
    var body: some View {
        NavigationView {
            List {
                ForEach(cart.items) { item in
                    HStack {
                        Text(item.name)
                        Spacer()
                        Text("$\(item.price, specifier: "%.2f")")
                        Stepper(value: self.quantityBinding(for: item)) {
                            Text("Qty: \(item.quantity)")
                        }
                    }
                }
                .onDelete(perform: deleteItem)
            }
            .navigationBarTitle("Cart")
            .navigationBarItems(trailing: EditButton())
        }
    }
    
    private func quantityBinding(for item: CartItem) -> Binding<Int> {
        Binding<Int>(
            get: { self.cart.items.firstIndex { $0.id == item.id }.map { self.cart.items[$0].quantity } ?? 0 },
            set: { newValue in
                if let index = self.cart.items.firstIndex(where: { $0.id == item.id }) {
                    self.cart.updateQuantity(index: index, quantity: newValue)
                }
            }
        )
    }
    
    private func deleteItem(at offsets: IndexSet) {
        cart.items.remove(atOffsets: offsets)
    }
}

struct cartMain: View {
    @StateObject var cart = Cart()
    
    var body: some View {
        CartCheckoutView(cart: cart)
    }
}

struct cartMain_Previews: PreviewProvider {
    static var previews: some View {
        cartMain()
    }
}

