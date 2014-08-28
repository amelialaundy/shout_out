class User < ActiveRecord::Base
  has_many :shout_outs
end
