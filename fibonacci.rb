# frozen_string_literal: true

# A class that, given an array of numbers,
# finds the next one in the Fibonacci sequence
class Fibonacci
  def initialize(current_sequence)
    @two_most_recent = current_sequence.last(2)
                                       .map(&:to_i)
  end

  def new_number
    return 1 unless @two_most_recent.length == 2

    @two_most_recent.sum
  end
end
