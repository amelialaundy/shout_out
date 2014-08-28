class CreateShoutOut < ActiveRecord::Migration
  def change
    create_table :shout_outs do |t|
      t.string :content
      t.timestamps
    end
  end
end
