class CreateCardsTable < ActiveRecord::Migration
  def change
    create_table(:cards) do |t|
      t.integer :value
      t.integer :suit
      t.integer :deck_id
      t.integer :hand_id
    end

    create_table(:decks) do |t|
      t.integer :game_id
    end

    create_table(:games) do |t|
      t.boolean :ended
      t.string :winner
      t.integer :rounds_played
    end

    create_table(:players) do |t|
      t.string :name
      t.string :current_score
    end

    create_table(:hands) do |t|
      t.boolean :winner
      t.integer :final_score
      t.timestamps
    end
  end
end
