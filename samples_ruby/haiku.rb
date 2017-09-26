require 'ruby_rhymes'



class SampleHaiku
  def initialize(paragraph)
    @paragraph = paragraph
  end
  def paragraph
    @paragraph
  end
  
  
  def valid
      is valid = true
      if @paragraph.lines.count != 3
        is_valid = false
      end
  end    
      
      if is_valid == true
        line1 = @paragraph.split("\n")[0]
        line2 = @paragraph.split("\n")[1]
        line3 = @paragraph.split("\n")[2]
      end  
      
      if line1.to_phrase.syllables != 5
        is_valid = false
        
      if line2.to_phrase.syllables != 7
        is_valid = false  
        
      if line3.to_phrase.syllables != 5
        is_valid = false
      end  
  end
  
  
  
  def syllable_counter
    scount = []
    @paragraph.split("").each do |letter|
      if letter.to_s.downcase.include?("a")
        scount << letter
      elsif letter.to_s.downcase.include?("e")
        scount << letter
      elsif letter.to_s.downcase.include?("i")
        scount << letter
      elsif letter.to_s.downcase.include?("o")
        scount << letter
      elsif letter.to_s.downcase.include?("u")
        scount << letter
      elsif letter.to_s.downcase.include?("y")
        scount << letter
      else scount << " "
      end
    end
    scount.to_s
      return scount.join('').split(' ').size
  end
end


haiku = SampleHaiku.new("green and speckled legs,
hop on logs and lily pads
splash in cool water")
puts haiku.paragraph
puts haiku.syllable_counter

