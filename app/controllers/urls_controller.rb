class UrlsController < ApplicationController

	def index
		@url = Url.new

	end

	# def new
	# 	@url = Url.new
	# end

	# def update
	# 	hash_code = rand(10000)
	# 	@url = Url.new(params[:website], hash_code: hash_code)
	# 	redirect_to @url
	# end

	def create
	 	hash_code = rand(10000)
	 	@url = Url.new(params[:website], hash_code: hash_code)
		# url = Url.new(website: params[:website], hash_code: hash_code)
		# url = Url.new(website: :website, hash_code: hash_code)
		# url = Url.new(website: params[:url], hash_code: hash_code)

		# url = Url.create(website: params[:url], hash_code: hash_code)
		# @url = Url.new(website: params[:website])
		# @url = Url.create
		# @url = Url.new
		# @url.save
		redirect_to urls_path
	end

	# def show
	# 	@urls = Url.find(params[:id])
	# end

	
end
