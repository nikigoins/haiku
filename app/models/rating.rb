class Rating < ApplicationRecord
  belongs_to :user
  belongs_to :haiku
  
  validates :vote, presence: true
  validates :user_id, uniqueness: { scope: :haiku_id }
<<<<<<< HEAD
end
=======
end
>>>>>>> 6d43a4b41b9adefb331c2a93d6733600aa9ba219
