Rails.application.routes.draw do
	# order of these does not matter
	# this shows the index HTML page for blog posts
	root 'blog_posts#index'


	#generates all CRUD URLS for blog posts
	resources :blog_posts
	# this shows the 'show' page for a specific (:id) blog post
	# get 'blog_posts/:id', to: 'blog_posts#show'

	# responsible for showing the user the new HTML form
	# get 'blog_posts/new', to: 'blog_posts#new'

	# responsible for creating a new blog post record in our database
	# post 'blog_posts', to: 'blog_post#create'

	# responsible for showing the user an edit form
	# get 'blog_posts/edit/:id', to: 'blog_post#show'

	# responsible for updating a record in our database
	# put 'blog_posts/edit/:id', to: 'blog_post#update'

	# responsible for deleting a blog post record
	# delete 'blog_posts/:id', to: 'blog_posts#destroy'
end
