
#==============================================================================#
# $Id: test-preload.rb,v 1.1 2009/09/07 18:17:37 arton Exp $
#==============================================================================#

require 'testcase'

#==============================================================================#

class PreloadTestCase < Minitest::Test
  include ExerbTestCase

  def name2
    return 'test-preload'
  end

  def test_preload
    assert_equal("10\n", execute_cmd("#{@name}\\#{@name}.exe || if errorlevel 10 echo 10"))
  end

end # PreloadTestCase

#==============================================================================#
#==============================================================================#
