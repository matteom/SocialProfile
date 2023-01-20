//
//  SocialProfileApp.swift
//  SocialProfile
//
//  Created by Matteo Manferdini on 09/08/22.
//

import SwiftUI
import Model

@main
struct SocialProfileApp: App {
	var body: some Scene {
		WindowGroup {
			NavigationStack {
				ContentView(user: .preview)
			}
		}
	}
}
