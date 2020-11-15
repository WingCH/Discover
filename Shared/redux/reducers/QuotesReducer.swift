//
//  QuotesReducer.swift
//  Discover
//
//  Created by CHAN Hong Wing on 15/11/2020.
//

import Foundation
import SwiftUIFlux

func quotesStateReducer(state: QuotesState, action: Action) -> QuotesState {
    var state = state
    switch action {
    case let action as QuotesActions.SetQuote:
        state.quote = action.quotes
    case let action as QuotesActions.RemoveQuote:
        state.quote = state.quote.filter { $0 != action.quote }
    default:
        break
    }
    return state
}
