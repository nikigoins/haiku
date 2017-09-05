require 'test_helper'

class FindVariable < ActiveSupport::TestCase
  private def find_method(path)
    add = false
    @check_method = ''
    File.foreach(path) do |x|
      if x.strip.starts_with?('# Stuff you need to edit')
        add = true
      elsif add == true
        @check_method += x
      end
    end
  end

  private def check_method(compare_value)
    a = eval @check_method
    assert_equal compare_value, a
  end
end
