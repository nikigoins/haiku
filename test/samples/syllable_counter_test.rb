require 'samples/find_variable'

class SyllableCounterTest < FindVariable
  def setup
    find_method('samples_ruby/syllable_counter.rb')
  end

  test 'one syllable' do
    check_method('one', 1)
  end

  test 'hello syllable' do
    check_method('hello', 2)
  end

  test 'beautiful syllable' do
    check_method('beautiful', 3)
  end

  test 'received syllable' do
    check_method('received', 3)
  end

  private def check_method(word, syllables)
    @check_method = "word = '#{word}' \n" + @check_method
    super(syllables)
  end
end
