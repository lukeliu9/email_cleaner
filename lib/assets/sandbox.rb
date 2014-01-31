source = "<p><strong>David&nbsp;Labno</strong><br/>Cataloging Assistant</p>
                             lukeliu@gmail.com  <p><img src=\"images/icon_phone.png\" title=\"Phone\"/>&nbsp;&nbsp;<a href=\"tel:312.362.5029\">312.362.5029</a><br/><img src=\"images/icon_email.png\"  title=\"Phone\"/>&nbsp;&nbsp;<a href=\"mailto:dlabno@depaul.edu\" title=\"dlabno@depaul.edu\">dlabno@depaul.edu</a><br/><img src=\"images/icon_office.png\"  title=\"Office\"/>&nbsp;&nbsp;&nbsp;LIB</p>
         "


r = Regexp.new(/\b[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}\b/) 

emails = source.scan(r).uniq

new_emails = []

emails.each do |email|
	start = 0
	address = email.split('@')[0] + "<"
	length = address.length
	search_result = source.index(address)
	until search_result != nil
		start += 1
		address = address[start..length]
		search_result = source.index(address)
		puts search_result
	end
	puts source[search_result-2..search_result+10]
end

