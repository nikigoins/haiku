# I used this site http://www.phonicsontheweb.com/syllables.php for syllable rules
# I don't think it's 100% correct

def syllable_counter(word)
  word = word.downcase.split("")

  word = remove_silent_e(word)
  word = remove_everything_but_vowels(word)

  return word.join("").split(" ").size
end

def remove_silent_e(word)
  vowels = ["a", "e", "i", "o", "u", "y"]
  new_word = []

  last_two_values = word[(word.length - 2)..(word.length - 1)]

  if last_two_values[0] != "l" && last_two_values[1] == "e"
    word.pop
  end

  if last_two_values == ["e", "d"]
    word[word.length - 2] = "a"
  end

  word.each_with_index do |letter, index|
    if index - 2 >= 0 &&
       letter == "e" &&
       vowels.include?(word[index - 2]) &&
       word[index + 1] != "r"
      new_word << " "
    else
      new_word << letter
    end
  end

  return new_word
end

def remove_everything_but_vowels(word)
  new_word = []

  word.each do |letter|
    if letter == "a"
      new_word << letter
    elsif letter == "e"
      new_word << letter
    elsif letter == "i"
      new_word << letter
    elsif letter == "o"
      new_word << letter
    elsif letter == "u"
      new_word << letter
    elsif letter == "y"
      new_word << letter
    else
      new_word << " "
    end
  end

  return new_word
end
