module ChandrayaanAngle
  def turn_upward(direction)
    new_direction = direction == 'Up' || direction == 'Down' ? direction : 'Up'
    [new_direction, direction]
  end

  def turn_downward(direction)
    new_direction = direction == 'Up' || direction == 'Down' ? direction : 'Down'
    [new_direction, direction]
  end
end
