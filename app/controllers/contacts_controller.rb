class ContactsController < ApplicationController

	def new
	end

	def create
	end

	def index
		@scrape = Scrape.find(params[:scrape_id])
		@contacts = @scrape.contacts
	end

	def destroy
	end

	def update
	end

	def show
	end

	private

end
