class CreateGuesses < ActiveRecord::Migration
  def change
    create_table :guesses do |t|
      t.string :response
      t.string :is_correct?
      t.references :user
      t.references :round
      t.references :card

      t.timestamps null: false
    end
  end
end
