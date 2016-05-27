get '/decks' do
	@decks = Deck.all
	erb	:"/decks/deck_index"
end

get '/decks/id' do

end