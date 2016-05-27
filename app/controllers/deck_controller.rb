get '/' do
	@decks = Deck.all
	erb	:"/decks/index"
end

get '/decks/:id' do

end