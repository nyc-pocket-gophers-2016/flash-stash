post '/guess' do

  # params[:response].downcase!
  submitted_answer = Card.find_by(id: params[:card_id])

  if submitted_answer.answer == params[:response]
    @correct = 'true'
  else
    @correct = 'false'
  end

  if logged_in?
    @guess = Guess.create(user_id: current_user.id, round_id: params[:round_id], card_id: params[:card_id], response: params[:response], is_correct?: @correct)
  else
    @guess = Guess.create(round_id: params[:round_id], card_id: params[:card_id], response: params[:response], is_correct?: @correct)
  end

    # binding.pry
  @round = Round.find_by(id: params[:round_id])
  @card = @round.next_card

  if @card
    erb :"cards/show"
  else
    redirect "/rounds/#{@round.id}"
  end

end
