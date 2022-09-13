//
//  ContentView.swift
//  SocialProfile
//
//  Created by Matteo Manferdini on 09/08/22.
//

import SwiftUI

struct ContentView: View {
	let user: User

	var body: some View {
		ScrollView {
			VStack {
				Header(
					name: user.name,
					headshot: Image(uiImage: user.headshot),
					cover: Image(uiImage: user.cover))
				Friends(friends: user.friends)
#if DEBUG
				Spacer()
					.frame(height: 150.0)
				Text("**Base URL**: \(API.baseURL)")
				Text("**API key**: \(API.key)")
#endif
			}
		}
		.navigationTitle("Social Profile")
	}
}

struct ContentView_Previews: PreviewProvider {
	static var previews: some View {
		NavigationView {
			ContentView(user: .preview)
		}
	}
}
