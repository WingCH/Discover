//
//  QuotesActions.swift
//  Discover
//
//  Created by CHAN Hong Wing on 15/11/2020.
//

import Foundation
import SwiftUIFlux

struct QuotesActions {
    struct SetQuote: Action {
        let quotes: [String]
    }

    struct RemoveQuote: Action {
        let quote: String
    }
}
