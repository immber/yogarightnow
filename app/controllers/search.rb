get '/' do
	erb :search
end

post '/search' do
	@zip = params['zip']
	callYelp(@zip)
	@results = ['one', 'two', 'three']
	erb :results
end


