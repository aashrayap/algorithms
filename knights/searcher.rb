require_relative 'tree'
require_relative 'queue'

class KnightSearcher

  def initialize(tree)
	@tree=tree
	@pointer=tree.start_move
	@queue=Queue.new
	@counter=0
	@exit=1
  end


  def bfs_for(target_coord)
  	@target_coord=target_coord
  	if check_node_bfs?
  		print "Found in #{@counter} moves"
  		@queue=Queue.new
  		@exit=2
  		return
  	end
  	unless @exit==2
  	  queue_children
  	  @pointer=@queue.dequeue
  	  bfs_for(target_coord)
  	end
  end


  def check_node_bfs?
  	@counter+=1
  	return false if @pointer.children.nil?
  	@pointer.children.each do |child_node|
  	  return true if (child_node.x==@target_coord[0] && child_node.y==@target_coord[1])
  	end
    return false
  end

  def queue_children
  	@pointer.children.each do |child_node|
  		@queue.enqueue(child_node)
  	end
  end


end


tree=MoveTree.new([4,4],4)
tree.inspect
searcher=KnightSearcher.new(tree)
final_coord=searcher.bfs_for([4,4])

