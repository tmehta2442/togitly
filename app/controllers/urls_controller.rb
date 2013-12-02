class UrlsController < ApplicationController

	def index
		@url = Url.new

	end

	def create
	 	hash_code = rand(10000)
	 	@url = Url.new(website: params[:url][:website], hash_code: hash_code)
		@url.save
		redirect_to @url
	end

	def show
		@urls = Url.all
	end

	
end
