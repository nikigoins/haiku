class CreateRatings < ActiveRecord::Migration[5.1]
  def change
    create_table :ratings do |t|
      t.integer :vote
      
      t.references :user, index: true
      t.references :haiku, index: true
      t.timestamps
    end
  end
<<<<<<< HEAD
end
=======
end
>>>>>>> 6d43a4b41b9adefb331c2a93d6733600aa9ba219
