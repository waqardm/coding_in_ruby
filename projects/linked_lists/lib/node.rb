# frozen_string_literal: false

# Class for each node
class Node
  attr_accessor :value, :next_node, :index

  def initialize(value = nil)
    @value = value
    @next_node = next_node
  end
end
