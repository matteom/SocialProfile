//
//  PreviewData.swift
//  SocialProfile
//
//  Created by Matteo Manferdini on 25/08/22.
//

import Foundation
import UIKit
import Model

extension User {
	static let preview = User(
		name: "Joseph Miller",
		headshot: UIImage(named: "bearded-man")!,
		cover: UIImage(named: "cover")!,
		about: "Physician. An apple a day keeps the doctor away.",
		city: "Budapest",
		company: "Acorn Health",
		birthday: Date(string: "31/12/1960")!,
		friends: .preview,
		posts: [ .preview, .preview, .preview],
		photos: [
			UIImage(named: "photo-1")!,
			UIImage(named: "photo-2")!,
			UIImage(named: "photo-3")!
		])
}

extension [User] {
	static let preview = [
		User(
			name: "Ryan Cunningham",
			headshot: UIImage(named: "friend-1")!,
			cover: UIImage(named: "cover-1")!,
			about: "Investment manager who enjoys eating out and sailing.",
			city: "New York",
			company: "Quad Goals",
			birthday: Date(string: "25/08/1990")!),
		User(
			name: "Lorainne Vincent",
			headshot: UIImage(named: "friend-2")!,
			cover: UIImage(named: "cover-2")!,
			about: "Sales assistant who enjoys podcasting, checking news stories, and meditation.",
			city: "Paris",
			company: "Apples and Oranges",
			birthday: Date(string: "14/04/2001")!),
		User(
			name: "Kash Lukeson",
			headshot: UIImage(named: "friend-3")!,
			cover: UIImage(named: "cover-3")!,
			about: "Personal trainer addicted to chocolate.",
			city: "Zurich",
			company: "Maxxx Energy",
			birthday: Date(string: "05/06/1999")!),
		User(
			name: "Agnes Hightower",
			headshot: UIImage(named: "friend-4")!,
			cover: UIImage(named: "cover-4")!,
			about: "Reliable, stingy, and a bit moody.",
			city: "Berlin",
			company: "Spilling The Beans Inc.",
			birthday: Date(string: "02/02/2002")!),
		User(
			name: "Eric Watts",
			headshot: UIImage(named: "friend-5")!,
			cover: UIImage(named: "cover-5")!,
			about: "Currently studying computer science. Severe phobia of mice. Obsessed with Frozen.",
			city: "Amsterdam",
			company: "The Helping Hands",
			birthday: Date(string: "01/09/1995")!)
	]
}

extension Date {
	init?(string: String) {
		let formatter = DateFormatter()
		formatter.dateFormat = "dd/MM/yy"
		guard let date = formatter.date(from: string) else { return nil }
		self.init(timeIntervalSinceNow: date.timeIntervalSinceNow)
	}
}

extension Post {
	static let preview = Post(
		text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
		date: Date())
}
