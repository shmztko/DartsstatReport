class User < ActiveRecord::Base
  has_many :records
  attr_accessible :card_name, :email, :login_url
end
