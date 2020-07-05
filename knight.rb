class Knight
  attr_reader :parent, :location, :possible_moves

  def initialize(location, parent = nil)
    @location = location
    @column = location[0]
    @row = location[1]
    @possible_moves = possible_moves
    @parent = parent
  end

  def possible_moves(column = @column, row = @row)
    result = [
            [column + 2, row + 1], [column + 2, row - 1], 
            [column - 2, row + 1], [column - 2, row - 1],
            [column + 1, row + 2], [column - 1, row + 2],
            [column + 1, row - 2], [column - 1, row - 2]]
    result = result.filter do |location| 
      #Filter out impossible moves e.g out of board moves
      if location[0] < 0 || location[0] > 7 || location[1] < 0 || location[1] > 7
        false
      else
        true
      end
    end
    return result
  end
end
