//
//  CommentView.swift
//  SocialProfile
//
//  Created by Matteo Manferdini on 18/01/23.
//

import SwiftUI
import Model

struct CommentView: View {
	let comment: Comment

    var body: some View {
		VStack(alignment: .leading) {
			HStack {
				CircularImage(
					image: Image(uiImage: comment.owner.headshot),
					borderwidth: 1.0)
				.frame(width: 20.0)
				Text(comment.owner.name)
					.bold()
			}
			Text(comment.text)
				.font(.caption)
		}
    }
}

struct CommentView_Previews: PreviewProvider {
    static var previews: some View {
		CommentView(comment: .preview)
			.namedPreview()
    }
}
