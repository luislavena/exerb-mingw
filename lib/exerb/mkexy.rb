
#==============================================================================#
# $Id: mkexy.rb,v 1.2 2004/03/25 09:35:25 yuya Exp $
#==============================================================================#

require 'yaml'
require 'exerb/utility2'

#==============================================================================#

BEGIN {
  $exerb_pwd = Dir.pwd
}

END {
  Dir.chdir($exerb_pwd)

  reject_list = [File.expand_path(__FILE__)]
  file_list   = [['script', $0, $0]] + Exerb::Utility2.loaded_features(reject_list)
  recipe_file = File.expand_path($0).sub(/(\.rbw?$|$)/i, '.exy')
  core = $0 =~ /\.rbw$/ ? "gui" : "cui"

  File.open(recipe_file, 'w') { |file|
    file.puts("# Generated by mkexy")
    file.puts("# on #{Time.now.strftime('%Y-%m-%d %H:%M')}")
    file.puts("")
    file.puts("general:")
    file.puts("  startup: #{$0}")
    file.puts("  core: #{core}")
    if RUBY_VERSION < "1.9"
      file.puts("  kcode: #{$KCODE.downcase}")
    else
      file.puts("  kcode: none") #no KCODE in 1.9
    end
    file.puts("")
    file.puts("file:")
    file_list.each { |type, filename, filepath|
      file.puts("  #{filename}:")
      file.puts("    file: #{filepath}") if filename != filepath
      file.puts("    type: #{type}") if type != "script"
    }
  }
}

#==============================================================================#
#==============================================================================#
