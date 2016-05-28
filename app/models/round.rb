class Round < ActiveRecord::Base
  belongs_to :user
  belongs_to :deck
  has_many :guesses

  def next_card
  	set = self.deck.cards - correctly_guessed_cards
  	set.sample
  end

  def correctly_guessed_cards
  	self.guesses.where(is_correct?: 'true').collect { |guess| guess.card}
  end
end

