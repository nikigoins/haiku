require 'samples/find_variable'

class AddNumbersTest < FindVariable
  def setup
    find_method('samples_ruby/add_numbers.rb')
  end

  test '3' do
    check_method(1, 2, 3)
  end

  test '-12' do
    check_method(-10, -2, -12)
  end

  test 'not a number' do
    check_method('this is a string', 1, 1)
  end

  private def check_method(first, second, total)
    @check_method = "first = '#{first}' \n
                     second = '#{second}' \n" + @check_method
    super(total)
  end
end
