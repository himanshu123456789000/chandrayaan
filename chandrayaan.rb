class Chandrayaan

  attr_accessor :position, :direction, :prev_direction
  def initialize
    @position = [0, 0, 0]
    @direction = 'N'
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

  def turn_upward(direction)
    new_direction = direction == 'Up' || direction == 'Down' ? direction : 'Up'
    [new_direction, direction]
  end

  def turn_downward(direction)
    new_direction = direction == 'Up' || direction == 'Down' ? direction : 'Down'
    [new_direction, direction]
  end

  def move_forward(position, direction)
    case direction
    when 'N' then position[1] += 1
    when 'S' then position[1] -= 1
    when 'E' then position[0] += 1
    when 'W' then position[0] -= 1
    when 'Up' then position[2] += 1
    when 'Down' then position[2] -= 1
    else
      raise ArgumentError, "Invalid direction: #{direction}"
    end
  end

  def move_backward(position, direction)
    case direction
    when 'N' then position[1] -= 1
    when 'S' then position[1] += 1
    when 'E' then position[0] -= 1
    when 'W' then position[0] += 1
    when 'Up' then position[2] -= 1
    when 'Down' then position[2] += 1
    else
      raise ArgumentError, "Invalid direction: #{direction}"
    end
  end
end
