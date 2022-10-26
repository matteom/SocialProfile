//
//  FlagsController.swift
//  SocialProfile
//
//  Created by Matteo Manferdini on 27/10/22.
//

import Foundation

class FlagsController: ObservableObject {
	@Published var flags = Flags()

	@MainActor
	func loadFlags() async throws {
		let url = URL(string: "file:///Users/Shared/flags.json")!
		let (data, _) = try await URLSession.shared.data(from: url)
		let decoder = JSONDecoder()
		flags = try decoder.decode(Flags.self, from: data)
	}
}
