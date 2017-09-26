class SampleHaiku

  attr_accessor :paragraph

  def initialize(paragraph)
    @paragraph = paragraph
  end

  def valid
    is_valid = true
    if @paragraph.lines.count != 3
      is_valid = false
    end
    
    lines = @paragraph.split("\n")
    line1 = lines[0].split(' ')
    line2 = lines[1].split(' ')
    line3 = lines[2].split(' ')
    
    puts line1.to_s
    syllable_counter("hello")
  end
  
  def syllable_counter(word)
    new_word = []
    word.split("").each do |letter|
      if letter.to_s.downcase == "a"
        new_word << letter
      elsif letter.to_s.downcase == "e"
        new_word << letter
      elsif letter.to_s.downcase == "i"
        new_word << letter
      elsif letter.to_s.downcase == "o"
        new_word << letter
      elsif letter.to_s.downcase == "u"
        new_word << letter
      elsif letter.to_s.downcase == "y"
        new_word << letter
      else
        new_word << " "
      end
  end

  puts new_word.to_s
  puts new_word.join('').split(' ').size
end

a = SampleHaiku.new("this is a new
paragraph with three lines")

a.valid




end