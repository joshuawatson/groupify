# -*- encoding: utf-8 -*-
require File.expand_path('../lib/groupify/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["dwbutler"]
  gem.email         = ["dwbutler@ucla.edu"]
  gem.description   = %q{Adds group and membership functionality to Rails models}
  gem.summary       = %q{Group functionality for Rails}
  gem.homepage      = "https://github.com/dwbutler/groupify"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "groupify"
  gem.require_paths = ["lib"]
  gem.version       = Groupify::VERSION
  gem.license       = 'MIT'

  gem.required_ruby_version = ">= 1.9.3"

  if RUBY_VERSION < '2'
    gem.add_development_dependency 'json', '~> 1.8'
  end

  gem.add_development_dependency "mongoid", ">= 3.1"
  gem.add_development_dependency "activerecord", ">= 3.2", "< 5.1"

  gem.add_development_dependency "rspec", ">= 3"

  gem.add_development_dependency "database_cleaner", "~> 1.5.3"
  gem.add_development_dependency "combustion", ">= 0.5.4"
  gem.add_development_dependency "appraisal"

  gem.add_development_dependency "github_changelog_generator"
end
