class User < ActiveRecord::Base
  has_many :shout_outs

  def self.validate(user_name,password)
    where(handle: user_name, password: password).first
  end
end

