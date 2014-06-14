# $Id: test-nest.rb,v 1.1 2008/07/01 15:39:53 arton Exp $

require 'testcase'

class NestTestCase < Minitest::Test
  include ExerbTestCase

  def name2
    return 'test-nest'
  end

  def test_nest
    ret1 = read_result(@name)
    ret2 = execute_exe(@name)
    assert_equal(ret1, ret2)
  end

end
