class ScrapeController < ApplicationController

	def index
		@scrapes = Scrape.all
	end

	def new

	end

	def create
		@scrape = Scrape.create(params[:scrape])
	end

	def show
	end

	def update
	end

	def edit
	end

	def destroy
	end
	
end
