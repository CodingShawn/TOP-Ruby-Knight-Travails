require_relative 'square'

class Chessboard
  def initialize
    for column in 0..7
      for row in 0..7
        square.New(column, row)
      end
    end
  end
end