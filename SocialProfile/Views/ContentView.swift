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
				Bio(
					about: user.about,
					birthday: user.birthday.formatted(date: .abbreviated, time: .omitted),
					city: user.company,
					company: user.city)
				.padding(.top, 16.0)
#if DEBUG
				Spacer()
					.frame(height: 60.0)
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
