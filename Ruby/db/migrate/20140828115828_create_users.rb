class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do | t |
      t.string :name
<<<<<<< HEAD
=======
      t.string :password
>>>>>>> 90aa86f92ea4eff03996d6cebc8f2eea243e87eb
      t.string :handle
      t.string :email
      t.string :location
      t.string :bio
      t.timestamps
    end
  end
end
