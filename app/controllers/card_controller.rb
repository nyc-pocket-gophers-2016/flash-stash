get '/rounds/:id/cards/:id' do
  @card = Card.find_by(id: params[:id])
  @round = Round.find_by(id: params[:captures][0])

  erb :'cards/show'
end

