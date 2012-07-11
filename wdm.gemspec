# -*- encoding: utf-8 -*-

Gem::Specification.new do |gem|
  gem.authors       = ["Maher Sallam"]
  gem.email         = ["maher@sallam.me"]
  gem.description   = %q{Windows Directory Monitor (WDM) is a library which can be used to monitor directories for changes. It's mostly implemented in C and uses the Win32 API for a better performance.}
  gem.summary       = %q{Windows Directory Monitor (WDM) is a threaded directories monitor for Windows.}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($\)
  gem.extensions    = ['ext/wdm/extconf.rb']
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "wdm"
  gem.require_paths = ["lib"]
  gem.version       = '0.0.1'
  
  gem.add_development_dependency('rake-compiler')
end
