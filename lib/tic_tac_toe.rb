class TicTacToe
  WIN_COMBINATIONS = [
    [0, 1, 2],
    [3, 4, 5],
    [6, 7, 8],
    [0, 3, 6],
    [1, 4, 7],
    [2, 5, 8],
    [0, 4, 8],
    [6, 4, 2]
  ]

  attr_accessor :board

  def initialize
    @board = Array.new(9, " ")
  end
  
  def display_board
    puts <<~HEREDOC
     #{board[0]} | #{board[1]} | #{board[2]} 
    -----------
     #{board[3]} | #{board[4]} | #{board[5]} 
    -----------
     #{board[6]} | #{board[7]} | #{board[8]} 
    HEREDOC
  end
    
  def input_to_index(input)
    input.to_i - 1
  end
  
  def move(index, turn)
    @board[index] = turn
  end
  
  def position_taken?(index)
    (board[index] == 'X' or board[index] == 'O') ? true : false
  end
  
  def valid_move?(index)
    if !position_taken?(index) && index.between?(0, 8)
      return true
    else
      return false
    end
  end
  
  def turn_count
    board.count { |b| b != " " }
  end
  
  def current_player
    turn_count.even? ? 'X' : 'O'
  end
  
  def turn
    input = gets.strip
    
  end
  
  def play
  end
  
end