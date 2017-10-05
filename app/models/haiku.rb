class Haiku < ApplicationRecord
    belongs_to :user

    # Use validate when it's a custom method you made
    validate :valid_poem
    
    # Use validates when it's a rails method
    validates :title, presence: true
    validates :poem, uniqueness: true, presence: true
    
    def valid_poem
        is_valid = true
        
        if self.poem.lines.count != 3
          is_valid = false
        end
        
        if is_valid == true
            line1 = poem.split("\n")[0]
            line2 = poem.split("\n")[1]
            line3 = poem.split("\n")[2]
            
            if line1.to_phrase.syllables != 5 || line1.to_s
               is_valid = false
            end
            
            if line2.to_phrase.syllables != 7
                is_valid = false
              end
        
              if line3.to_phrase.syllables != 5
                is_valid = false
              end
        end
        
        if is_valid
            return true
        else
          errors.add(:invalid_poem, ': The poem does not match haiku rules')
          throw(:abort)
        end
    end
end
