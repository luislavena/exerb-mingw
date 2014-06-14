
#==============================================================================#
# $Id: test-socket.rb,v 1.1 2006/12/29 08:46:25 arton Exp $
#==============================================================================#

require 'testcase'

#==============================================================================#

class SocketTestCase < Minitest::Test
  include ExerbTestCase

  def name2
    return 'test-socket'
  end

  def test_socket
    ret1 = read_result(@name)
    ret2 = execute_exe(@name)
    assert_equal(ret1, ret2)
  end

end # ArgvTestCase

#==============================================================================#
#==============================================================================#
