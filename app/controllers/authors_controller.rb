class AuthorsController < ApplicationController
	def index
		@authors = Author.all
	end

	def show
		@author = Author.find(params[:id])
	end

	def new
		@author = Author.new
	end

	def create
	  @author = Author.new(params)
	  redirect_to post_path(@author)
	end

	def update
	  @author = Author.find(params[:id])
	  @author.update(params.require(:author))
	  redirect_to post_path(@author)
	end

	def edit
	  @author = Author.find(params[:id])
	end
end