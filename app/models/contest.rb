class Contest < ActiveRecord::Base
  has_one :sport
  has_one :site
  has_and_belongs_to_many :players
  has_and_belongs_to_many :teams
  has_and_belongs_to_many :games
end
