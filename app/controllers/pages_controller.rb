class PagesController < ApplicationController

	def clean_scrape
		@scrape = Scrape.new
		@output = @input ? Scrape.cleanse(@scrape) : []
	end

end
