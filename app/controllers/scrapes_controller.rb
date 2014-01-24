class ScrapesController < ApplicationController

	def new
		@scrape = Scrape.new
	end

	def create
		@scrape = Scrape.new(scrape_params)
		if @scrape.save
			flash[:notice] = "Successfully created scrape."
			@scrape.contacts << Scrape.create_contacts(@scrape, @scrape.id)
			redirect_to scrapes_path
		else
			render :action => 'new'
		end
	end

	def show
		@scrape = Scrape.find(params[:id])
		redirect_to scrape_contacts_path(@scrape)
	end

	def index
		@scrapes = Scrape.all
	end

	def update
	end

	def edit
	end

	def destroy
		@scrape = Scrape.find(params[:id])
		@scrape.delete
		redirect_to scrapes_path
	end

	private

	def scrape_params
		params.require(:scrape).permit(:school, :role, :url)
	end


end
