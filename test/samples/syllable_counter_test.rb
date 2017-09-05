require 'samples/find_variable'

class SyllableCounterTest < FindVariable
  def setup
    find_method('samples_ruby/syllable_counter.rb')
  end

  test 'one syllable' do
    check_method('one line', 1)
  end

  private def check_method(sentence, syllables)
    super(syllables)
  end
end
