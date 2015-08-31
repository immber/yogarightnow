get '/' do
	erb :search
end

post '/search' do
	@zip = params['zip']
	if validateZip(@zip) then
		@results = callYelp(@zip)
		erb :results
	else
		@flash = 'you must enter a valid US zip code'
		erb :search
	end

end


