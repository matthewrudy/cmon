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
  s.homepage    = "https://github.com/matthewrudy/cmon"
  s.summary     = %q{Cron Enabled Monitoring}
  s.description = %q{Write a simple monitoring script to be executed by cron, using an rspec-like assertion syntax}

  s.required_rubygems_version = ">= 1.3.6"
  
  s.files              = Dir.glob("{lib/**/*}")
  s.test_files         = Dir.glob("{test/**/*}")
  s.executables        = %w(cmon)
  s.require_paths      = ["lib"]
  
  s.add_dependency "rspec", ">= 2.0.0"
  s.add_dependency "activesupport", ">= 3.0.0"
end
