function = ARGV.first
if function == "identity"
  $stdout.write $stdin.read
else
  puts "Error: Unsupported function #{function}"
end
