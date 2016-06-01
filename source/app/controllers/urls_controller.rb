class UrlsController < ApplicationController
	def index
		@urls = Url.all
	end
	def create
		@url = Url.new(url_params)
		if @url.save
			redirect_to root_path
		else
			render 'new'
		end
	end
	def new
		@url = Url.new
	end
	def redirect
		@url = Url.where(key: params[:key]).first
		redirect_to @url.long_url
	end
	private

	def url_params
		params.require(:url).permit(:long_url)
	end
end
