# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'lock_ness_monster/version'

Gem::Specification.new do |spec|
  spec.name          = "lock_ness_monster"
  spec.version       = LockNessMonster::VERSION
  spec.authors       = ["Jithu Gopal", "Timothy Andrew"]
  spec.email         = ["mail@timothyandrew.net", "jithug87@gmail.com"]
  spec.description   = %q{Lock your gem versions down.}
  spec.summary       = ""
  spec.homepage      = "http://github.com/nilenso/lock_ness_monster"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
