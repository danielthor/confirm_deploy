# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'confirm_deploy/version'

Gem::Specification.new do |gem|
  gem.name          = "confirm_deploy"
  gem.version       = ConfirmDeploy::VERSION
  gem.authors       = ["Daniel Thor"]
  gem.email         = ["daniel.thor@gmail.com"]
  gem.description   = %q{Confirm before deploy in Capistrano}
  gem.summary       = %q{Let user confirm before deploying app with Capistrano.}
  gem.homepage      = "https://github.com/danielthor/confirm_deploy"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
end
