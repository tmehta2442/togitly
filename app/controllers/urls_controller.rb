class UrlsController < ApplicationController

	def index
		@url = Url.new
	end

	# def new
	# 	@url = Url.new
	# end

	def create
		hash_code = rand(10000)
		@urls = Url.create(website: params[:id], hash_code: hash_code)
		redirect_to @urls
	end

	def show
		@urls = Url.find(params[:id])
	end

	
end
