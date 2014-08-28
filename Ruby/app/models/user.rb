class User < ActiveRecord::Base
  has_many :shout_outs
<<<<<<< HEAD
=======

  def is_password_valid(submitted_password)
  	submitted_password == password
  end
>>>>>>> 90aa86f92ea4eff03996d6cebc8f2eea243e87eb
end
