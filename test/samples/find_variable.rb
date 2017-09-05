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

  private def run_compare
    
  end
end
