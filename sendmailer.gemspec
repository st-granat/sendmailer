# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'sendmailer/version'

Gem::Specification.new do |gem|
  gem.license       = "MIT"
  gem.name          = "sendmailer"
  gem.version       = Sendmailer::VERSION
  gem.authors       = ["Andrey"]
  gem.email         = ["railscode@gmail.com"]
  gem.description   = "Send Email from Rails 3 App with Sendmail server (Such as Exim4)"
  gem.summary       = "Send Email from Rails 3 App with Sendmail server (Such as Exim4)"
  gem.homepage      = "https://github.com/st-granat/sendmailer"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_dependency "rails", ">= 3.0.0"
end
