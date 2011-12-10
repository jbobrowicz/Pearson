require File.join(File.dirname(__FILE__), "lib/planner") 

begin
  planner = Planner.new(ARGV, $stdin, $stdout)
  planner.run
rescue => e
  $stdout.puts e
end







