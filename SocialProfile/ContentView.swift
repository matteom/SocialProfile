//
//  ContentView.swift
//  SocialProfile
//
//  Created by Matteo Manferdini on 09/08/22.
//

import SwiftUI

struct ContentView: View {
	var body: some View {
		VStack {
			Header(
				name: "John Doe",
				headshot: Image("bearded-man"),
				cover: Image("cover"))
#if DEBUG
			Text("**Base URL**: \(API.baseURL)")
			Text("**API key**: \(API.key)")
#endif
		}
	}
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
