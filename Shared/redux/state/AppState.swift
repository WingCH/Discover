//
//  AppState.swift
//  Discover
//
//  Created by CHAN Hong Wing on 15/11/2020.
//

import Foundation
import SwiftUIFlux


struct AppState: FluxState, Codable {
    var quotesState: QuotesState

    init() {
        self.quotesState = QuotesState()
    }
}
