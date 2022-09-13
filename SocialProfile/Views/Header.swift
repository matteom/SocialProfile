//
//  Header.swift
//  SocialProfile
//
//  Created by Matteo Manferdini on 24/08/22.
//

import SwiftUI

struct Header: View {
	let name: String
	let headshot: Image
	let cover: Image

	var body: some View {
		ZStack(alignment: .top) {
			cover
				.resizable()
				.aspectRatio(3/2, contentMode: .fit)
			VStack {
				CircularImage(image: headshot)
					.frame(width: 160.0, height: 160.0)
					.padding(.top, 170)
				Text(name)
					.font(.title)
					.bold()
			}
		}
	}
}

struct Header_Previews: PreviewProvider {
    static var previews: some View {
		Header(
			name: "John Doe",
			headshot: Image("bearded-man"),
			cover: Image("cover"))
		.namedPreview()
    }
}
