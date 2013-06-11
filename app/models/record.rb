class Record < ActiveRecord::Base
  belongs_to :user
  has_many :statistics
  has_many :awards
  attr_accessible :played_at
end
