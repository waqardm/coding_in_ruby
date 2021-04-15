# frozen_string_literal: false

require_relative 'node'
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
    @tail = new_node if @tail.nil?
    @tail = @tail.next_node = new_node
    @counter += 1
  end

  def prepend(value)
    new_node = Node.new(value)
    new_node.next_node = @head
    @head = new_node
    @tail ||= new_node
    @counter += 1
  end

  def size
    @counter
  end

  def at(index)
    current_node = @head
    index.times do
      current_node = current_node.next_node
    end
    current_node
  end

  def pop
    puts 'The list is empty!' if size.nil?
    current_node = @head
    current_node = current_node.next_node until current_node.next_node == @tail
    current_node.next_node = 'nil'
    @tail = current_node
    @counter -= 1
  end

  def contains?(value)
    ObjectSpace.each_object(Node) do |obj|
      p true if value == obj.value
    end
  end

  def find(value)
    current_node = @head
    counter = 0
    found = false
    until current_node.nil?
      found = true if current_node.value == value
      current_node = current_node.next_node
      counter += 1 unless found
    end
    counter if found
  end

  def to_s
    current_node = @head
    until current_node.nil?
      print "(#{current_node.value}) -> "
      current_node = current_node.next_node
    end
    print nil
  end
end

list = LinkedList.new
list.append(3)
list.append(5)
list.prepend(99)
pp list
puts "The list head is #{list.head.value}"
puts "The list tail is #{list.tail.value}"
list.at(0)
list.pop
list.contains?(99)
p list.find(99)
p list.to_s
