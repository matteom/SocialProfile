//
//  PreviewData.swift
//  SocialProfile
//
//  Created by Matteo Manferdini on 25/08/22.
//

import Foundation
import UIKit

extension User {
	static let preview = User(
		name: "Joseph Miller",
		headshot: UIImage(named: "bearded-man")!,
		cover: UIImage(named: "cover")!,
		friends: .preview)
}

extension [User] {
	static let preview = [
		User(
			name: "Ryan Cunningham",
			headshot: UIImage(named: "friend-1")!,
			cover: UIImage(named: "cover-1")!),
		User(
			name: "Lorainne Vincent",
			headshot: UIImage(named: "friend-2")!,
			cover: UIImage(named: "cover-2")!),
		User(
			name: "Kash Lukeson",
			headshot: UIImage(named: "friend-3")!,
			cover: UIImage(named: "cover-3")!),
		User(
			name: "Agnes Hightower",
			headshot: UIImage(named: "friend-4")!,
			cover: UIImage(named: "cover-4")!),
		User(
			name: "Eric Watts",
			headshot: UIImage(named: "friend-5")!,
			cover: UIImage(named: "cover-5")!)
	]
}
