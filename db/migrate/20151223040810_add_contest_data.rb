class AddContestData < ActiveRecord::Migration
  def change
    add_column :contests, :name, :string
    add_column :contests, :contest_date, :date
    add_column :contests, :type, :string
  end
end
