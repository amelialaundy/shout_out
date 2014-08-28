class User < ActiveRecord::Base
  has_many :shout_outs
  validates :handle, uniqueness: true
  validates :email, uniqueness: true
  validates :password, length: { in: 6..20 }

  def self.validate(user_name,password)
    where(handle: user_name, password: password).first
  end
end

