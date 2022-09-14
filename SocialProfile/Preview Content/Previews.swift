//
//  View.swift
//  SocialProfile
//
//  Created by Matteo Manferdini on 12/08/22.
//

import SwiftUI

extension View {
	func previewWithName(_ name: String) -> some View {
		self
			.previewLayout(.sizeThatFits)
			.previewDisplayName(name)
	}

	func namedPreview() -> some View {
		let name = String.name(for: type(of: self))
		return previewWithName(name)
	}
}

extension String {
	static func name<T>(for type: T) -> String {
		String(reflecting: type)
			.components(separatedBy: ".")
			.last ?? ""
	}
}
