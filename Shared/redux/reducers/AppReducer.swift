//
//  AppReducer.swift
//  Discover
//
//  Created by CHAN Hong Wing on 15/11/2020.
//

import Foundation
import SwiftUIFlux

func appStateReducer(state: AppState, action: Action) -> AppState {
    var state = state
    state.quotesState = quotesStateReducer(state: state.quotesState, action: action)
    
    return state
}
