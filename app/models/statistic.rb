class Statistic < ActiveRecord::Base
  belongs_to :record
  attr_accessible :game_format, :game_name, :game_order, :number_of_players, :score
end
