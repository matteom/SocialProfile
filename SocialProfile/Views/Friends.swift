//
//  Friends.swift
//  SocialProfile
//
//  Created by Matteo Manferdini on 25/08/22.
//

import SwiftUI
import Model

struct Friends: View {
	let friends: [User]

	var body: some View {
		VStack {
			Text("\(friends.count) friends")
				.foregroundColor(.secondary)
			HStack(spacing: -3) {
				ForEach(0..<5) { index in
					if index < friends.count {
						let friend = friends[index]
						NavigationLink(value: friend) {
							CircularImage(
								image: Image(uiImage: friend.headshot),
								borderwidth: 2.0)
							.frame(width: 48.0, height: 48.0)
						}
					}
				}
			}
		}
	}
}

struct Friends_Previews: PreviewProvider {
	static var previews: some View {
		Friends(friends: .preview)
			.namedPreview()
	}
}
