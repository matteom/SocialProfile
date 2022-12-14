//
//  User.swift
//  SocialProfile
//
//  Created by Matteo Manferdini on 25/08/22.
//

import UIKit

public struct User: Hashable {
	public let name: String
	public let headshot: UIImage
	public let cover: UIImage
	public let about: String
	public let city: String
	public let company: String
	public let birthday: Date
	public var friends: [User] = []
	public var posts: [Post] = []
	public var photos: [UIImage] = []

	public init(name: String, headshot: UIImage, cover: UIImage, about: String, city: String, company: String, birthday: Date, friends: [User] = [], posts: [Post] = [], photos: [UIImage] = []) {
		self.name = name
		self.headshot = headshot
		self.cover = cover
		self.about = about
		self.city = city
		self.company = company
		self.birthday = birthday
		self.friends = friends
		self.posts = posts
		self.photos = photos
	}
}
