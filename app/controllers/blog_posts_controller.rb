class BlogPostsController < ApplicationController
  
	# GET
	# listing all posts
  def index
  	#if view needs access, create @instance variable@
  	@blog_posts = BlogPost.all
  end

  	#GET
	#showing a single blog post
  def show
  	@blog_post = BlogPost.find(params[:id])
  end

  	# GET
	#showing the user a form to fill out for a new blog post
  def new
  	# Creates a new instance of a blogpost
  	@blog_post = BlogPost.new
  end

  	# POST
	# responsible for creating a new blog post record
  def create
  	@blog_post = BlogPost.new(blog_post_params)
  	if @blog_post.save 
  		# after creating a post, where do we want to take the user?
  		redirect_to blog_post_path(@blog_post)
  	else
  		# something went wrong, user must fix errors on the form
  		render :new
  	end
  end

  	# GET
	# showing the user a form to edit an existing blog post
  def edit
  	@blog_post = BlogPost.find(params[:id])
  end


  	# PUT / PATCH
	# responsible for finding a record to update, then updating it
  def update
  	@blog_post = BlogPost.find(params[:id])
  	if @blog_post.update(blog_post_params)
  		redirect_to blog_post_path(@blog_post)
  	else 
  		render :edit
  	end
  end

  	# DELETE
	# delete request / called destroy. Finds a record and removes it from the table
  def destroy
  	@blog_post = BlogPost.find(params[:id])
  	if @blog_post.destroy
  		redirect_to root_path
  	else
  		puts "Sorry, please try deleting post again"
  		redirect_to root_path
  	end

  end
  
  	# Strong Params
  private
	  def blog_post_params
	  	params.require(:blog_post).permit(:title, :author, :body)
	  end

end





















