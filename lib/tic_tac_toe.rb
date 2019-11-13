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
  

  def display_board2
    puts " #{board[0]} | #{board[1]} | #{board[2]} "
    puts "-----------"
    puts " #{board[3]} | #{board[4]} | #{board[5]} "
    puts "-----------"
    puts " #{board[6]} | #{board[7]} | #{board[8]} "
  end
  
  def display_board
    puts <<~HEREDOC
       #{board[0]} | #{board[1} | #{board[2}
      -----------
       #{board[3]} | #{board[4]} | #{board[5]}
      -----------
       #{board[6]} | #{board[7]} | #{board[8]}
    HEREDOC
  
  def play
  end
  
end