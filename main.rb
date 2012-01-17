require_relative "lib/planner"
require_relative "lib/cfg"

begin
  cfg = Cfg.new
  planner = Planner.new(cfg.argv, cfg.input, cfg.output)
  planner.run
rescue => e
  $stdout.puts e
end







