require 'cmon/version'

module CMon
  class Command
    def initialize(cmd)
      @command = cmd
      @output  = `#{cmd}`
    end
    attr_reader :command, :output

    def should_not_include(text)
      if self.output.include?(text)
        puts "CMon assumptions failed"
        puts "Should Not Include #{text.inspect}"
        puts
        puts "Output:"
        puts self.output
        exit 1
      end
    end
  end
  
  class Runner
    
    def self.run(path)
      runner = self.new
      runner.run(path)
    end
    
    def run(file)
      steps = File.read(file)
      self.instance_eval(steps)
      exit 0
    end
    
    def output_from(cmd)
      CMon::Command.new(cmd)
    end
  end
  
end