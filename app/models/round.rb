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

  def first_guess
    false_array = self.guesses.select { |guess| guess.is_correct? == "false" }
    unique_guesses = self.guesses
    self.guesses.each do |guess|
      false_array.each do |false_guess|
        if guess.card_id == false_guess.card_id
          unique_guesses -= [guess]
        end
      end
    end
    unique_guesses.length
  end

end

