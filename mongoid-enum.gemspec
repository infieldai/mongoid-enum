# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'mongoid/enum/version'

Gem::Specification.new do |spec|
  spec.name          = "mongoid-enum"
  spec.version       = Mongoid::Enum::VERSION
  spec.authors       = ["Nicholas Bruning"]
  spec.email         = ["nicholas@bruning.com.au"]
  spec.description   = %q{Heavily inspired by DDH's ActiveRecord::Enum, this little library is just there to help you cut down the cruft in your models and make the world a happier place at the same time.}
  spec.summary       = %q{Sweet enum sugar for your Mongoid documents}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "mongoid", "~>3.1"

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec", "~> 2.14"
  spec.add_development_dependency "guard-rspec", "~> 4.0.3"
  spec.add_development_dependency "database_cleaner", "~> 1.2.0"
  spec.add_development_dependency "mongoid-rspec", "~> 1.5.1"
end