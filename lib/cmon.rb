require 'cmon/version'
require 'rspec/expectations'

module CMon
  class Command
    def initialize(cmd)
      @command = cmd
      @output  = `#{cmd}`
    end
    attr_reader :command, :output
    
    def include?(text)
      self.output.include?(text)
    end
    
    def =~(regexp)
      self.output =~ regexp
    end
    
    def ==(value)
      self.output == value
    end
    
    def to_s
      "command: `#{self.command}` \noutput:  #{self.output}"
    end
  end
  
  module Helpers
    
    def output_from(cmd)
      CMon::Command.new(cmd)
    end
    
  end
  
  class Runner
    
    include RSpec::Matchers
    include Helpers
    
    def self.run(path)
      runner = self.new
      runner.run(path)
    end
    
    def run(path)
      steps = File.read(path)
      begin
        self.instance_eval(steps)
        exit 0
      rescue RSpec::Expectations::ExpectationNotMetError => e
        puts "C'Mon assumptions failed"
        puts e.message
        exit 1
      end
    end
    
  end
  
end