//
//  User.swift
//  SocialProfile
//
//  Created by Matteo Manferdini on 25/08/22.
//

import UIKit

struct User {
	let name: String
	let headshot: UIImage
	let cover: UIImage
	let about: String
	let city: String
	let company: String
	let birthday: Date
	var friends: [User] = []
}
