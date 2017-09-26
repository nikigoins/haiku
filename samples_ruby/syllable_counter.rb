def syllable_counter(word)
    new_paragarph = []
    paragraph.split("").each do |letter|
    if letter.to_s.downcase == "a"
      new_paragraph << letter
    elsif letter.to_s.downcase == "e"
      new_paragraph << letter
    elsif letter.to_s.downcase == "i"
      new_paragraph << letter
    elsif letter.to_s.downcase == "o"
      new_paragraph << letter
    elsif letter.to_s.downcase == "u"
      new_paragraph << letter
    elsif letter.to_s.downcase == "y"
      new_paragarph << letter
    else
      new_paragraph << " "
    end
  end
end

puts syllable_counter(hello)