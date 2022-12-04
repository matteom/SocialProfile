//
//  PostView.swift
//  SocialProfile
//
//  Created by Matteo Manferdini on 02/11/22.
//

import SwiftUI

struct PostView: View {
	let user: User
	let post: Post
	
	var body: some View {
		VStack(alignment: .leading, spacing: 8.0) {
			HStack {
				CircularImage(
					image: Image(uiImage: user.headshot),
					borderwidth: 2.0)
				.frame(width: 60.0)
				VStack(alignment: .leading, spacing: 4.0) {
					Text(user.name)
						.font(.headline)
					Text(post.date.formatted(
						date: .abbreviated,
						time: .shortened))
					.font(.caption)
					.foregroundColor(.secondary)
				}
			}
			Text(post.text)
			HStack {
				Button(action: {}) {
					Label("Like", systemImage: "hand.thumbsup")
				}
				Spacer()
				Button(action: {}) {
					Label("Comment", systemImage: "bubble.left")
				}
				Spacer()
				Button(action: {}) {
					Label("Share", systemImage: "arrowshape.turn.up.right")
				}
			}
			.padding(.horizontal)
		}
	}
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
		PostView(user: .preview, post: .preview)
			.namedPreview()
    }
}
