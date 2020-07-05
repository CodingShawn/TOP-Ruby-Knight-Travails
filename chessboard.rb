require_relative 'square'
require_relative 'knighttree'

class Chessboard
  def initialize
    for column in 0..7
      for row in 0..7
        Square.new(column, row)
      end
    end
  end

  def knight_moves(initial_location, end_location)
    knight_travels = KnightTree.new(initial_location)
    route = knight_travels.breadth_order_search(end_location)
    puts " You made it in #{route.length - 1} moves! Heres your path:"
    for i in route
      print "#{i}\n"
    end
  end
end

x = Chessboard.new
x.knight_moves([3,3],[4,3])