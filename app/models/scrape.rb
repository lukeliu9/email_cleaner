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
		
		source = open(website.url, &:read)

		emails = source.scan(r).uniq

		new_emails = []

		emails.each do |email|
			start = 0
			address = email.split('@')[0]
			search_result = source.index(address)
			until search_result == nil
				start += 1
				address = address[start..address.length]
				search_result = source.index(address)
			end
		end

		# new_emails << Contact.new(email: email, scrape_id: scrape)

		# return new_emails

	end

end
