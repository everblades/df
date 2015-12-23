class AddDataToTeam < ActiveRecord::Migration
  def change
    add_column :teams, :name, :string
    add_column :teams, :goals_for, :float
    add_column :teams, :goals_against, :float
    add_column :teams, :shots_for, :float
    add_column :teams, :shots_against, :float
  end
end
