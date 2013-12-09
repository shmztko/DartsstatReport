class User < ActiveRecord::Base

  has_many :records

  attr_accessible :card_name, :login_url

  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me
  # attr_accessible :title, :body

  def played_dates
    records.map {|r| r.played_at}
  end

  def record_by_date(date)
      Record.where('user_id = ? AND played_at = ?', id, date).first
  end
end
