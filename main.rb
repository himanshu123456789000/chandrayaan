require_relative 'chandrayaan'

puts "Welcome to Chandrayaan 3 Lunar Craft Control!"

# Get initial position from the user
print "Enter the initial x-coordinate: "
x = gets.chomp.to_i

print "Enter the initial y-coordinate: "
y = gets.chomp.to_i

print "Enter the initial z-coordinate: "
z = gets.chomp.to_i

# Get initial direction from the user
print "Enter the initial direction (N/S/E/W/Up/Down): "
direction = gets.chomp.upcase

# Create a new Chandrayaan instance
chandrayaan = Chandrayaan.new(position: [x, y, z], direction: direction)

# Get commands from the user
print "Enter commands (e.g., f for forward, l for left, etc.): "
commands = gets.chomp.split("")

# Execute commands
chandrayaan.execute_commands(commands)

# Output final position and direction
puts "Final Position: (#{chandrayaan.position[0]}, #{chandrayaan.position[1]}, #{chandrayaan.position[2]})"
puts "Final Direction: #{chandrayaan.direction}"
