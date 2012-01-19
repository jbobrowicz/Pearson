require_relative "lib/planner"
require_relative "lib/cfg"

begin
  cfg = Cfg.new(ARGV.first, $stdin, $stdout, ARGV.last)
  planner = Planner.new(cfg)
  planner.run
rescue => e
  $stdout.puts e
end







