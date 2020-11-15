//
//  QuotesState.swift
//  Discover
//
//  Created by CHAN Hong Wing on 15/11/2020.
//

import Foundation
import SwiftUIFlux

struct QuotesState: FluxState, Codable {
    var quote: [String] = []
}
