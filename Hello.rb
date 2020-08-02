puts "Hello!"

lander_count = 10

puts lander_count

def doubleVal(val)
    val * 2
end

lander_count = doubleVal(10)

message = if lander_count > 10
    "Launching probe"
else
    "Waiting for probes to return"
end

puts message