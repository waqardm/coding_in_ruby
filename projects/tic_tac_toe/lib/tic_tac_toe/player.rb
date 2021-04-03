# frozen_string_literal: true

module TicTacToe
  class Player # :nodoc:
    attr_reader :name, :color

    def initialize(input)
      @name = input.fetch(:name)
      @color = input.fetch(:color)
    end
  end
end
