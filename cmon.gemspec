# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib/', __FILE__)
$:.unshift lib unless $:.include?(lib)

require 'cmon/version'

Gem::Specification.new do |s|
  s.name        = "cmon"
  s.version     = CMon::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Matthew Rudy Jacobs"]
  s.email       = ["matthewrudyjacobs+cmon@gmail.com"]
  s.homepage    = "https://github.com/matthewrudy/com"
  s.summary     = %q{Monitoring with Cron}
  s.description = %q{Cron + Monitoring}

  s.required_rubygems_version = ">= 1.3.6"
  
  s.files              = Dir.glob("{lib/**/*}")
  s.test_files         = Dir.glob("{test/**/*}")
  s.executables        = %w(cmon)
  s.require_paths      = ["lib"]
end
