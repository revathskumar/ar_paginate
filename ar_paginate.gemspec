lib = File.expand_path('../lib', __FILE__)
$:.unshift 'lib' unless $:.include?(lib)

require 'ar_paginate/version'
Gem::Specification.new do |s|
  s.name = "ar_paginate"
  s.version = ArPaginate::VERSION
  # s.authors = []
  # s.email = []
  # s.homepage = ''
  # s.summary = ''
  # s.description = ''

  # s.required_rubygems_version = ">= 1.3.0"

  s.files = Dir.glob("lib/**/*.rb") + Dir["vendor/**/*"] #+ %w(README.rdoc CHANGELOG LICENCE)
  # s.extra_rdoc_files = ["README.rdoc"]
  # s.rdoc_options = ["--charset=UTF-8"]
  s.require_path = 'lib'
  # s.test_files = Dir.glob("spec/**/*.rb")

  # dependencies
  s.add_runtime_dependency "activesupport", ["~> 3.2.13"]
  s.add_runtime_dependency "activeresource", ["~> 3.2.13"]
  # s.add_runtime_dependency "will_paginate", ["~> 3.0.0"]

  # # development dependencies
  # s.add_development_dependency "rspec", ["~> 2.6.0"]
  # s.add_development_dependency "activerecord", ["~> 3.0.0"]
  # s.add_development_dependency "nokogiri", ["~> 1.4.5"]
end
