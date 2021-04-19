//
//  ContentView.swift
//  testeui
//
//  Created by Rodrigo Rocha on 19/04/21.
//

import SwiftUI

struct ContentView: View {
    @State var nome: String = "World"
    
    var body: some View {
        VStack(alignment: .center) {
            TextField("asd", text: $nome)
                .padding()
            
            NavigationLink("Clique aqui", destination: DetalheView(nome: $nome))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct DetalheView: View {
    @Binding var nome: String
    
    var body: some View {
        VStack {
            Text("Hello, \(nome)!")
                .padding()
                .foregroundColor(.red)
            Text("Welcome to SwiftUI!")
                .padding()
                .foregroundColor(.red)
            Button("Alterar nome") {
                nome = "Mudou"
            }
        }
    }
}
