class CreateShoutOuts < ActiveRecord::Migration
  def change
    create_table :shout_outs do |t|
      t.references :user
      t.string :content
      t.timestamps
    end
  end
end
