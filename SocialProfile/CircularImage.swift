//
//  CircularImage.swift
//  SocialProfile
//
//  Created by Matteo Manferdini on 12/08/22.
//

import SwiftUI

struct CircularImage: View {
	let image: Image

    var body: some View {
		image
			.resizable()
			.frame(width: 160.0, height: 160.0)
			.clipShape(Circle())
			.overlay(
				Circle().stroke(Color.gray, lineWidth: 5.0))
    }
}

struct CircularImage_Previews: PreviewProvider {
    static var previews: some View {
		CircularImage(image: Image("bearded-man"))
			.namedPreview()
    }
}
