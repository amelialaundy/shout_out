class User < ActiveRecord::Base
  has_many :shout_outs

  def is_password_valid(submitted_password)
  	submitted_password == password
  end
end
