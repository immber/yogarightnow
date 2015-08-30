get '/' do
	erb :search
end

post '/search' do
	@zip = params['zip']
	@results = ['one', 'two', 'three']
	erb :results
end


