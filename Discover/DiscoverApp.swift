//
//  DiscoverApp.swift
//  Discover
//
//  Created by CHAN Hong Wing on 15/11/2020.
//

import SwiftUI
import SwiftUIFlux

// For `StoreProvider` initialize and `PreviewProvider` debug only
let store = Store<AppState>(reducer: appStateReducer,
                            middleware: [loggingMiddleware],
                            state: AppState())

@main
struct DiscoverApp: App {
    var body: some Scene {
        WindowGroup {
            StoreProvider(store: store) {
                TabbarView()
            }
        }
    }
}

struct TabbarView: View {
    @State var selectedTab = Tab.discover
    
    enum Tab: Int {
        case discover
    }
    
    func tabbarItem(text: String, image: String) -> some View {
        VStack {
            Image(systemName: image)
                .imageScale(.large)
            Text(text)
        }
    }
    
    var body: some View {
        TabView(selection: $selectedTab) {
            
            DiscoverView().tabItem{
                self.tabbarItem(text: "Discover", image: "square.stack")
            }.tag(Tab.discover)
            DiscoverView().tabItem{
                self.tabbarItem(text: "Discover", image: "square.stack")
            }.tag(Tab.discover)
            
        }.onAppear(perform: {
            
            let str = "abcdefghijklmnopqrstuvwxyz"
            let characterArray = Array(str).map({ s in
                String(s)
            })
            
            store.dispatch(action: QuotesActions.SetQuote(quotes: characterArray))
        })
    }
}
