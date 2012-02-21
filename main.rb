require_relative "lib/planner"
require_relative "lib/cfg"
Dir["./lib/*_function.rb"].each {|f| require_relative f.gsub('.rb','')}

begin
  cfg = Cfg.new(ARGV.first, $stdin, $stdout, ARGV.last)
  planner = Planner.new(cfg)
  planner.run
rescue => e
  $stdout.puts e
end







