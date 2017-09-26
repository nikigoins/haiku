class Haiku

  attr_accessor :paragraph

  def initialize(paragraph)
    @paragraph = paragraph
  end
    
  def valid
    lines = @paragraph.split("\n")
    line1 = lines[0].split(' ')
    line2 = lines[1].split(' ')
    line3 = lines[2].split(' ')
    
    puts line1.to_s
  end
end

a = Haiku.new("this is a new 
paragraph with
three lines")

puts a.valid