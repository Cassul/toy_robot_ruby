# frozen_string_literal: true
class Direction; end

class NorthDirection < Direction
  def left
    WestDirection.new
  end

  def right
  end
end

class SouthDirection < Direction
  def left
    EastDirection.new
  end

  def right
  end
end

class EastDirection < Direction
  def left
    NorthDirection.new
  end

  def right
  end
end

class WestDirection < Direction
  def left
    SouthDirection.new
  end

  def right
  end
end

module SetDirection
  def self.some_func(direction)
    case direction
    when "North"
      direction = NorthDirection.new
    when "East"
      direction = EastDirection.new
    when "South"
      direction = SouthDirection.new
    when "West"
      direction = WestDirection.new
    else
      begin
        raise StandardError.new "This is an exception"
      rescue StandardError => e
        puts 'invalid direction'
      end
    end
  end
end
