
def validateZip(zip)
	zip.match(/\d{5}/)
end

def callYelp(zip) 
	p "you are in callyelp"
	client = Yelp::Client.new({ consumer_key: ENV['CONSUMER_KEY'],
                            consumer_secret: ENV['CONSUMER_SECRET'],
                            token: ENV['TOKEN'],
                            token_secret: ENV['TOKEN_SECRET']
                          })
	params = {
		term: 'yoga',
		limit: 10,
		category_filter: 'yoga'
		}

	response = client.search(zip, params)
	response.businesses
end


