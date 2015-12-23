class AddDataToPlayer < ActiveRecord::Migration
  def change
    add_column :players, :name, :string
    add_column :players, :goals, :integer
    add_column :players, :assists, :integer
    add_column :players, :games_played, :integer
    add_column :players, :toi, :float
    add_column :players, :toi60, :float
    add_column :players, :sog, :integer
    add_column :players, :position, :string
    add_column :players, :blocks, :integer
    add_column :players, :plus_minus, :integer
    add_column :players, :penalty_minutes, :integer
    add_column :players, :power_play_points, :integer
    add_column :players, :goalie_wins, :integer
    add_column :players, :goalie_saves, :integer
    add_column :players, :goalie_shutouts, :integer
    add_column :players, :goalie_goals_against, :float
  end
end
