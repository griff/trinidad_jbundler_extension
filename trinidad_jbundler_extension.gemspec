# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'trinidad_jbundler_extension/version'

Gem::Specification.new do |spec|
  spec.name          = "trinidad_jbundler_extension"
  spec.version       = TrinidadJbundlerExtension::VERSION
  spec.authors       = ["Brian Olsen"]
  spec.email         = ["brian@maven-group.org"]
  spec.description   = %q{Pulls jars resolved by jbundler into trinidad webapp}
  spec.summary       = %q{Pulls jars resolved by jbundler into trinidad webapp}
  spec.homepage      = "https://github.com/griff/trinidad_jbundler_extension"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency 'trinidad', '~> 1.4.5'
  spec.add_dependency 'jbundler', '~> 0.5.2'

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
