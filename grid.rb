

class Grid


  def initialize
    @ships = []
  end

  def has_ship_on?(x, y)
    found = false
    @ships.each do |s|
      found = true if s.covers?(x, y)
    end
    found
  end

  def place_ship(ship, x, y, across)
    ship.place(x, y, across)
    @ships.each do |s|
      if ship.overlaps_with?(s)
        return false
      end
    end
    @ships << ship
  end

  def display
    puts "    1   2   3   4   5   6   7   8   9   10"
    display_line
    ("A".."J").each_with_index do |l, i|
      y = i + 1
      line = l + " |"
      (1..10).each do |x|
        if has_ship_on?(x, y)
          line << " O |"
        else
          line << "   |"
        end
      end
        puts line
      end
      display_line
    end


  private def display_line
    puts "  -----------------------------------------"
  end

  def fire_at(x, y)
    if has_ship_on?(x, y)
    else false
    end
  end
end
