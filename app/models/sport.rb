class Sport < ActiveRecord::Base
  has_many :teams
  has_many :players
  has_and_belongs_to_many :games
end
