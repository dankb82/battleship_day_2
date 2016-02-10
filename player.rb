# def get_user_input
#   gets.chomp
# end

class Player
  attr_reader :grid
  def initialize
    @grid = Grid.new
  end

  def ships
    @grid.ships
  end


  def call_shot
   coordinates = (65 + rand(10)).chr + rand(1..10).to_s
  end

  def call_shot
    puts "Dave, please enter the coordinates for your next shot (e.g. 'B10'):\n"
    coordinates = (65 + rand(10)).chr + rand(1..10).to_s
  end

end
