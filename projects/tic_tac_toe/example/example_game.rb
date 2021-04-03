# frozen_string_literal: true

require_relative '../lib/tic_tac_toe'

puts 'Welcome to tic tac toe'
waqar = TicTacToe::Player.new({ color: 'X', name: 'waqar' })
frank = TicTacToe::Player.new({ color: 'O', name: 'frank' })
players = [waqar, frank]
TicTacToe::Game.new(players).play
