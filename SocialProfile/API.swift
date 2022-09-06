//
//  API.swift
//  SocialProfile
//
//  Created by Matteo Manferdini on 22/08/22.
//

import Foundation

struct API {
	static var baseURL: URL {
		URL(string: value(for: "API_BASE_URL"))!
	}

	static var key: String {
		value(for: "API_KEY")
	}
}

private extension API {
	static func value(for key: String) -> String {
		let object = Bundle.main.object(forInfoDictionaryKey: key)
		guard let value = object as? String else {
			fatalError("The \(key) key is missing. Read the Config.README file")
		}
		return value
	}
}
