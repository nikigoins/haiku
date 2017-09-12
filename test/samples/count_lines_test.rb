require 'samples/find_variable'

class CountLinesTest < FindVariable
  def setup
    find_method('samples_ruby/count_lines.rb')
  end

  test 'one line' do

    check_method('one line', 1)
  end

  test '6 lines' do
    paragraph = "This \n has \n 6 \n lines \n in \n it"
    check_method(paragraph, 6)
  end

  test 'empty' do
    check_method(nil, 0)
  end

  private def check_method(paragraph, lines)
    @check_method += "count_lines('#{paragraph}')"
    super(lines)
  end
end
