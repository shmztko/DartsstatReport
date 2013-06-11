class Award < ActiveRecord::Base
  belongs_to :record
  attr_accessible :award_count, :award_name
end
