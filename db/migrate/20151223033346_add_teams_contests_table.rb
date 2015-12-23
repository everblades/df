class AddTeamsContestsTable < ActiveRecord::Migration
  def change
    create_table :contests_teams, id: false do |t|
      t.integer :contest_id
      t.integer :team_id
    end

    add_index :contests_teams, :contest_id
    add_index :contests_teams, :team_id
  end
end
