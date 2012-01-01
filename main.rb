require_relative "lib/planner"

begin
  planner = Planner.new(ARGV, $stdin, $stdout)
  planner.run
rescue => e
  $stdout.puts e
end







