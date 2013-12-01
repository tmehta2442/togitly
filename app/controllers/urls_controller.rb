class UrlsController < ApplicationController

	def index
		@url = Url.new
	end

	# def new
	# 	@url = Url.new
	# end

	def create
		@url = Url.create(params[:website])
		redirect_to @url
	end

	def show
		@urls = Url.find(params[:id])
	end

	
end
