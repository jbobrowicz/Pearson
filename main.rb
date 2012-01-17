require_relative "lib/planner"
require_relative "lib/cfg"

begin
  cfg = Cfg.new
  planner = Planner.new(cfg.function, cfg.input, cfg.output, cfg.output_format)
  planner.run
rescue => e
  $stdout.puts e
end







