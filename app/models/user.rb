class User < ActiveRecord::Base
  has_many :shout_outs
  has_many :user_relationships, :foreign_key => 'follower_id'
  has_many :followees, class_name: 'User', through: :user_relationships, foreign_key: 'followee_id'
  has_many :followers, class_name: 'User', through: :user_relationships, foreign_key: 'follower_id'
  
  validates :handle, uniqueness: true
  validates :email, uniqueness: true
  validates :password, length: { in: 6..20 }

  def self.validate(user_name,password)
    where(handle: user_name, password: password).first
  end
end

