require_relative 'knight'

class KnightTree
  def initialize(location)
    @root = Knight.new(location)
  end

  def breadth_order_search(end_location)
    queue = [@root]
    current_node = nil
    loop do
      current_node = queue.shift
      if current_node.location == end_location
        break
      end
      #Add all next possible moves into queue
      for i in current_node.possible_moves
        queue.append(Knight.new(i, current_node))
      end
    end
    path = []
    #Find the path that led to destination
    loop do
      path.unshift(current_node.location)
      if current_node.parent.nil?
        break
      end
      current_node = current_node.parent
    end
    path
  end
end 