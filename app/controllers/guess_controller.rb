post '/guess' do

  @card = Card.find_by(id: params[:card_id])
  @next_card = Card.find_by(id: @card.move_to_next_card)
  @round = Round.find_by(id: params[:id])

  @guess = Guess.create(response: params[:response], round_id: params[:id], card_id: params[:card_id])

  # check_response = @round.guesses.first.response == @card.answer
  if @card.deck_id == @next_card.deck_id
  redirect "/rounds/#{@guess.round_id}/cards/#{@card.move_to_next_card}"
  else
    redirect "users/#{current_user.id}"
  end
end
