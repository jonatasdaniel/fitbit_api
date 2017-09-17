# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'fitbit_api/version'

Gem::Specification.new do |spec|
  spec.name          = 'fitbit_api'
  spec.version       = FitbitAPI::VERSION
  spec.authors       = ['Zoran']

  spec.summary       = %q{A Ruby interface to the Fitbit API, using OAuth2 (renamed to fitbit_api)}
  spec.homepage      = FitbitAPI::REPO_URL
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.required_ruby_version = '>= 1.9.3'

  spec.add_runtime_dependency     'oauth2', '~> 1.0'

  spec.add_development_dependency 'bundler', '~> 1.10'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec'

  spec.post_install_message = %q{
    The fitbit_api gem has been renamed to fitbit_api and will no longer be supported.
    Please switch to using fitbit_api for all versions greater than 0.7.1.
  }
end
