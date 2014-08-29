class CreateUserRelationships < ActiveRecord::Migration
  def change 
  	create_table :user_relationships do |t|
  		t.integer :follower_id
  		t.integer :followee_id 
  		t.timestamps 
  	end

  end
end
