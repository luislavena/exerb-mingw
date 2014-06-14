# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'exerb/version'

Gem::Specification.new do |spec|
  spec.name          = "exerb"
  spec.version       = Exerb::VERSION
  spec.authors       = ["windwiny"]
  spec.email         = ["windwiny.ubt@gmail.com"]

  spec.extensions    = ['extconf.rb']
  spec.summary       = %q{Packaged *.rb *.so *.dll into alone.exe file.}
  spec.description   = %q{Exerb support for mingw/rubyinstaller. Packaged ruby source files and ruby extensions files into a single PE executable file.}
  spec.homepage      = "https://github.com/windwiny/exerb-mingw"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake", "> 0.1"
  spec.add_development_dependency "rake-compiler", "> 0.1"
end
