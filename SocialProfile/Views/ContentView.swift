//
//  ContentView.swift
//  SocialProfile
//
//  Created by Matteo Manferdini on 09/08/22.
//

import SwiftUI
import Model

struct ContentView: View {
	@StateObject private var viewModel: ViewModel

	init(user: User) {
		_viewModel = StateObject(wrappedValue: ViewModel(user: user))
	}

	var body: some View {
		ScrollView {
			VStack {
				Header(
					name: viewModel.user.name,
					headshot: Image(uiImage: viewModel.user.headshot),
					cover: Image(uiImage: viewModel.user.cover))
				Friends(friends: viewModel.user.friends)
				Buttons(addFriend: {
					Task { await viewModel.addFriend() }
				})
				.padding(.vertical)
				Photos(user: viewModel.user)
				Bio(
					about: viewModel.user.about,
					birthday: viewModel.user.birthday.formatted(date: .abbreviated, time: .omitted),
					city: viewModel.user.city,
					company: viewModel.user.company)
				.padding(.top, 16.0)
				Divider()
					.padding(.horizontal, 8.0)
				ForEach(viewModel.user.posts) { post in
					VStack {
							PostView(
								user: viewModel.user,
								post: post,
								addComment: viewModel.addComment,
								like: viewModel.like)
						Divider()
					}
					.padding()
				}
#if DEBUG
				Spacer()
					.frame(height: 60.0)
				Text("**Base URL**: \(API.baseURL)")
				Text("**API key**: \(API.key)")
#endif
			}
		}
		.navigationTitle("Social Profile")
		.navigationDestination(for: User.self) { user in
			ContentView(user: user)
		}
	}
}

extension ContentView {
	class ViewModel: ObservableObject {
		@Published var user: User

		init(user: User) {
			self.user = user
		}

		func addFriend() async {
			return
		}

		func addComment() {
			withAnimation {
				user.posts[0].comments.append([Comment].preview[0])
			}
		}

		func like() {
			user.posts[0].likes += 1
		}
	}
}

struct ContentView_Previews: PreviewProvider {
	static var previews: some View {
		NavigationView {
			ContentView(user: .preview)
		}
	}
}
