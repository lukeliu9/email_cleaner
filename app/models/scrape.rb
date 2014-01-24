class Scrape < ActiveRecord::Base
has_many :contacts

validates :school, presence: true
validates :role, presence: true
validates :url, presence: true

require 'open-uri'

	def after_create

	end

	def self.create_contacts(website, scrape)

		r = Regexp.new(/\b[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}\b/)   
		
		source = open(website.emails, &:read)

		emails = source.scan(r).uniq

		new_emails = []

		emails.each do |email|
			new_emails << Contact.new(email: email, scrape_id: scrape)
		end

		return new_emails

	end

end
