class CreateHaikus < ActiveRecord::Migration[5.1]
  def change
    create_table :haikus do |t|
      t.string :title 
      t.text :poem
      t.string :user_email

      t.timestamps
    end
  end
end
