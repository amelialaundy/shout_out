class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do | t |
      t.string :name, null: false
      t.string :password, null: false
      t.string :handle, null: false
      t.string :email, null: false
      t.string :location
      t.string :bio
      t.timestamps
    end
  end
end
