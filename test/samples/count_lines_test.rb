require 'samples/find_variable'

class CountLinesTest < FindVariable
  def setup
    find_method('samples_ruby/count_lines.rb')
  end

  test 'one line' do
    run_compare('one line', 1)
  end

  test '6 lines' do
    paragraph = "This \n has \n 6 \n lines \n in \n it"
    run_compare(paragraph, 6)
  end

  test 'empty' do
    run_compare(nil, 0)
  end

  private def run_compare(paragraph, lines)
    a = eval @check_method
    assert_equal a, lines
  end
end
