require 'ruby_rhymes'


def syllable_counter(word)
    word.to_s.to_phrase.syllables
end

puts syllable_counter("Hello, this is a sentence.")