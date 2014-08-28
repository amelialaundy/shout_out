class User < ActiveRecord::Base
  has_many :shout_outs

  def is_password_valid(submitted_password)
  	submitted_password == password
  end

  def self.validate(user_name,password)
    where(handle: user_name, password: password).first
  end
end

