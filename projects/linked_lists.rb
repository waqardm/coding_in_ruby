# frozen_string_literal: false

require 'pp'

# class for Linked List
class LinkedList
  attr_accessor :head, :tail

  def initialize
    @head = nil
    @tail = nil
    @counter = 0
  end

  def append(value)
    new_node = Node.new(value)
    @head ||= new_node
    !@tail ? @tail = new_node : @tail.next_node = new_node
    @counter += 1
  end

  def prepend(value)
    new_node = Node.new(value)
    @head = new_node
    @tail ||= new_node
    @counter += 1
  end

  def size
    @counter
  end
  # at(index) returns the node at the given index

  def at(index)
  end
  # pop removes the last element from the list

  def pop
    tail - 1
  end
  # contains?(value) returns true if the passed in value is in the list and otherwise returns false.

  def contains?(value)
    ObjectSpace.each_object(Node) do |obj|
      true if value == obj
    end
  end
  # find(value) returns the index of the node containing value, or nil if not found.

  def find(value)
    ObjectSpace.each_object(Node) do |obj|
      if value == obj
        index = value[index]
      end
    end
  end
  # to_s represent your LinkedList objects as strings, so you can print them out and preview them in the console. The format should be: ( value ) -> ( value ) -> ( value ) -> nil

  def to_s
    ObjectSpace.each_object(Node) do |obj|
      puts "#{value}, "
    end
  end
end

# Class for each node
class Node
  attr_accessor :value, :next_node, :index

  def initialize(value = nil)
    @value = value
    @next_node = next_node
  end
end

list = LinkedList.new
list.append(3)
list.append(5)
list.prepend(99)
pp list
puts "The list head is #{list.head.value}"
puts "The list tail is #{list.tail.value}"
p list.at(1)
