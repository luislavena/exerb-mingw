
#==============================================================================#
# $Id: testcase.rb,v 1.23 2008/06/13 23:53:34 arton Exp $
#==============================================================================#
gem 'minitest'
require 'minitest/autorun'

libpath = File.expand_path('../../lib', __FILE__)
unless $:.include?(libpath)
  $:.unshift(libpath)
end

require 'exerb/recipe'
require 'exerb/executable'

#==============================================================================#

module ExerbTestCase

  def setup
    @name = self.name2
    self.setup_exe
  end

  def setup_exe
    create_exe(@name)
  end

  def name2
    raise(NotImplementedError)
  end

  def create_exe(name, exename = name)
    Dir.chdir(name) {
      ver        = RUBY_VERSION.gsub('.','')
      corefile   = File.expand_path("../../data/exerb/ruby#{ver}c.exc", __FILE__)
      mkexy = File.expand_path('../../bin/mkexy', __FILE__)
      `#{Gem.ruby} #{mkexy} --old "old_#{exename}.exy" --  -I. "#{exename}.rb"`
      recipe     = Exerb::Recipe.load("#{exename}.exy")
      archive    = recipe.create_archive()
      executable = Exerb::Executable.read(corefile)
      executable.rsrc.add_archive(archive)
      executable.write("#{exename}.exe")
    }
  end

  def execute_cmd(cmd)
    return `#{cmd}`.gsub(/\r\n/, "\n")
  end

  def execute_exe(name, argv = '')
    return execute_cmd("#{name}/#{name}.exe #{argv}")
  end

  def read_file(filepath)
    return File.open(filepath) { |file| file.read }.gsub(/\r\n/) {"\n"}
  end

  def read_result(name)
    return read_file("#{name}/#{name}.ret")
  end

end # ExerbTestCase

#==============================================================================#
#==============================================================================#
