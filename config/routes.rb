Rails.application.routes.draw do
	devise_for :users
	resources :posts do
		member do
			get "like", to: "posts#upvote"
			get "dislike", to: "posts#downvote"
		end
		resources :comments
	end
	resources :categories
	resources :users do
		member do
			get "follow"
			get "unfollow"
		end
	end

	root "posts#index"
end
