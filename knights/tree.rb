Move=Struct.new(:x,:y,:depth,:children,:parent)

class Movetree
	def initialize(coordinate,max_depth=1)
	  @max_depth=max_depth
	  @current_depth=0
	  @num_moves=-1
	  @max_x=4
	  @max_y=4
	  @starting_square=Move.new(coordinate[0],coordinate[1],0,[],nil)
	  @current_move=@starting_square
	end

	attr_accessor 

	def add_move(move)
	  current_depth+=1
	  if (move.x==@current_move.x-2) && (move.y==@current_move.y+1) && in_board?(current_move.x-2,current_move.y+1) && current_depth<=max_depth




	def in_board?(x,y)
		return false if  x<0 || y<0 || x>max_x || y>max_y
		return true
	end
end


