# frozen_string_literal: true
require './direction'

class ToyRobot
  def initialize(x, y, z)
    @bord_size_x = 10
    @bord_size_y = 10
    @location_x = x
    @location_y = y
    @direction = SetDirection.some_func(z)
  end

  def print_location_and_direction
    p "I'm at the (#{@location_x}, #{@location_y}) facing #{@direction}"
  end

  def move_robot()
    case @direction
    when NorthDirection
      @location_y--
    when EastDirection
      @location_x++
    when WestDirection
      @location_x--
    when SouthDirection
      @location_y++
    else
      begin
        raise StandardError.new "This is an exception"
      rescue StandardError => e
        puts 'invalid direction'
      end
    end
    @direction
  end

  def rotate_robot_left
    @direction = @direction.left
  end

  def rotate_robot_right
    @direction = @direction.right
  end
end

robot = ToyRobot.new(2, 3, "North")
p robot.move_robot