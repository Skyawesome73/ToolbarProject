//
//  ContentView.swift
//  ToolbarProject
//
//  Created by Nicholas Puig on 12/19/22.
//

import SwiftUI

struct ContentView: View {
    @State var isPresenting: Bool = false
    
    var body: some View {
        
        NavigationStack {
            Text("Initial View")
                .toolbar {
                    ToolbarItem(placement: .navigationBarLeading) {
                        Button(action:{
                            isPresenting = true
                        } , label: {
                            Image(systemName: "gear")
                        })
                    }
                }
                .sheet(isPresented: $isPresenting) {
                    NavigationStack {
                        Text("Settings Page")
                    
                    .toolbar {
                        ToolbarItem {
                            Button(action: {}, label: {
                                Text("Save")
                            })
                        }
                        }
                    }
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
