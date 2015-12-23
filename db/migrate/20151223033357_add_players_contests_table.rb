class AddPlayersContestsTable < ActiveRecord::Migration
  def change
    create_table :contests_players, id: false do |t|
      t.integer :contest_id
      t.integer :player_id
    end

    add_index :contests_players, :contest_id
    add_index :contests_players, :player_id
  end
end
