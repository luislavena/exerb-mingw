
#==============================================================================#
# $Id: runtime.rb,v 1.3 2005/05/05 07:31:57 yuya Exp $
#==============================================================================#

printf("RUBY_VERSION          = %s\n", RUBY_VERSION)
printf("RUBY_RELEASE_DATE     = %s\n", RUBY_RELEASE_DATE)
printf("ExerbRuntime.filepath = %s\n", ExerbRuntime.filepath) if $Exerb
printf("ExerbRuntime.filename = %s\n", ExerbRuntime.filename) if $Exerb

printf("Dir.pwd                      = %s\n", Dir.pwd)
printf("__FILE__                     = %s\n", __FILE__)
printf("File.expand_path(__FILE__)   = %s\n", File.expand_path(__FILE__))
printf("File.absolute_path(__FILE__) = %s\n", File.absolute_path(__FILE__))

printf("ARGV                         = %s\n", ARGV)

#==============================================================================#
#==============================================================================#
