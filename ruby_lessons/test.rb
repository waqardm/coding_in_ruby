# frozen_string_literal: true

# Test class
class BaseballPlayer
  def initialize(hits, walks, at_bats)
    @hits = hits
    @walks = walks
    @at_bats = at_bats
  end

  def batting_average
    @hits.to_f / @at_bats
  end

  def on_base_percentage
    (@hits + @walks) / @at_bats.to_f
  end
end

waqar = BaseballPlayer.new(100, 3, 20)
puts waqar.batting_average
puts waqar.on_base_percentage
