lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'time_ago_in_words/version'

Gem::Specification.new do |spec|

  spec.platform      = Gem::Platform::RUBY
  spec.name          = 'time_ago_in_words'
  spec.version       = TimeAgoInWords::VERSION
  spec.summary       = %q{Humanize elapsed time from some Time instance to Time.now, e.g. '2 hours and 1 minute ago'}
  spec.description   = spec.summary

  spec.required_ruby_version     = '>= 1.9.2'
  spec.required_rubygems_version = '>= 1.8.0'

  spec.license       = 'MIT'

  spec.authors       = ['Leo Gallucci']
  spec.email         = ['elgalu3@gmail.com']
  spec.homepage      = 'https://github.com/elgalu/time_ago_in_words'

  spec.require_paths = ['lib']
  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})

  spec.add_development_dependency 'bundler', '>= 1.3.5'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'rspec', '~> 2.14', '>= 2.14.1'
  spec.add_development_dependency 'rubygems-tasks', '~> 0.2', '>= 0.2.4'

end
