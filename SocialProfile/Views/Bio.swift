//
//  Bio.swift
//  SocialProfile
//
//  Created by Matteo Manferdini on 26/10/22.
//

import SwiftUI

struct Bio: View {
	let about: String
	let birthday: String
	let city: String
	let company: String

    var body: some View {
		VStack(alignment: .leading, spacing: 16.0) {
			Text("About me")
				.font(.title3)
				.bold()
			Text(about)
				.frame(maxWidth: .infinity, alignment: .leading)
			Grid(verticalSpacing: 8.0) {
				BioRow(imageName: "birthday.cake", text: "Born on \(birthday)")
				BioRow(imageName: "mappin.and.ellipse", text: "Lives in \(city)")
				BioRow(imageName: "building", text: "Works at \(company)")
			}
			.font(.callout)
		}
		.padding(.horizontal, 20.0)
    }
}

struct BioRow: View {
	let imageName: String
	let text: String

	var body: some View {
		GridRow {
			Image(systemName: imageName)
			Text(text)
				.gridColumnAlignment(.leading)
		}
	}
}

struct Bio_Previews: PreviewProvider {
    static var previews: some View {
		Bio(
			about: "Physician. An apple a day keeps the doctor away.",
			birthday: "1 Jan 2022",
			city: "Amsterdam",
			company: "Pizza Factory")
			.namedPreview()
    }
}
