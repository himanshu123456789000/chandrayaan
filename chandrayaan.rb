require_relative 'motion/chandrayaan_movement.rb'
require_relative 'motion/chandrayaan_rotation.rb'
require_relative 'motion/chandrayaan_angle.rb'

class Chandrayaan

  include ChandrayaanMovement
  include ChandrayaanRotation
  include ChandrayaanAngle

  attr_accessor :position, :direction, :prev_direction
  def initialize(position: [0, 0, 0], direction: 'N')
    @position = position
    @direction = direction
    @prev_direction = nil
  end

  def execute_commands(commands)
    commands.each do |command|
      begin
        case command
        when 'f' then move_forward(@position, @direction)
        when 'b' then move_backward(@position, @direction)
        when 'l' then @direction = turn_left(@direction, @prev_direction)
        when 'r' then @direction = turn_right(@direction, @prev_direction)
        when 'u' then @direction, @prev_direction = turn_upward(@direction)
        when 'd' then @direction, @prev_direction = turn_downward(@direction)
        else
          raise ArgumentError, "Invalid command: #{command}"
        end
      rescue ArgumentError => e
        puts "Error: #{e.message}"
      end
    end
  end
end
