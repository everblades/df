class AddGamesContestsTable < ActiveRecord::Migration
  def change
    create_table :contests_games, id: false do |t|
      t.integer :contest_id
      t.integer :game_id
    end

    add_index :contests_games, :contest_id
    add_index :contests_games, :game_id
  end
end
