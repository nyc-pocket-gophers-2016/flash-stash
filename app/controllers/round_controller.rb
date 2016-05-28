post '/rounds' do
# binding.pry
	if logged_in?
		@round = Round.create(user_id: current_user.id, deck_id: params[:deck_id])
	else
		@round = Round.create(deck_id: params[:deck_id])
	end
	@card_deck = @round.deck.cards.shuffle
	@card = @card_deck[0]
	erb :"cards/show"
end

get '/rounds/:id' do
    @round = Round.find_by(id: params[:id])
  if @round
    @round_category = @round.deck.category
    @total_guesses = @round.guesses.length
    @total_questions = @round.deck.cards.length
    @first_try = @round.first_guess
    erb :'/rounds/show'
  else
    redirect '/'
  end
end


