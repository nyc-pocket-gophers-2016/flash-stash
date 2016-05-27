post '/rounds' do

	if logged_in?
		@round = Round.create(user_id: current_user.id, deck_id: params[:deck_id])
	else
		@round = Round.create(deck_id: params[:deck_id])
	end
	@card_deck = @round.deck.cards.shuffle
	@card = @card_deck[0]
	erb :"cards/show"
end
