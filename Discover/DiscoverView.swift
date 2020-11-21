//
//  DiscoverView.swift
//  Discover
//
//  Created by CHAN Hong Wing on 15/11/2020.
//

import SwiftUI
import SwiftUIFlux

struct DiscoverView: ConnectedView {

    struct Props {
        let quotes: [String]
        let dispatch: DispatchFunction
    }

    func map(state: AppState, dispatch: @escaping DispatchFunction) -> Props {
        return Props(quotes: state.quotesState.quote, dispatch: dispatch)
    }

    func body(props: Props) -> some View {
        List(props.quotes, id: \.self) { (quote)  in
            HStack {
                Text(quote)
                Spacer()
                Image(systemName: "trash")
                    .onTapGesture {
                        print("remove \(quote)")
                        props.dispatch(QuotesActions.RemoveQuote(quote: quote))
                    }
            }
        }
    }
}

struct DiscoverView_Previews: PreviewProvider {
    static var previews: some View {
        DiscoverView().environmentObject(store)
    }
}
