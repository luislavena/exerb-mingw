ARGV.unshift("generate")
load Gem.bin_path('rake', 'rake')
ARGV.shift if ARGV.first == "generate"

## ------- fake extensions
STDERR.puts("==== fake extensions ====")
File.write('Makefile', "clean:\ndefault:\ninstall:\n")
