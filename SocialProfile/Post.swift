//
//  Post.swift
//  SocialProfile
//
//  Created by Matteo Manferdini on 02/11/22.
//

import Foundation

struct Post: Hashable, Identifiable {
	let id = UUID()
	let text: String
	let date: Date
}
