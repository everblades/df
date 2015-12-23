class AddDataToGame < ActiveRecord::Migration
  def change
    add_column :games, :away_team, :string
    add_column :games, :game_date, :date
    add_column :games, :home_team, :string
  end
end
