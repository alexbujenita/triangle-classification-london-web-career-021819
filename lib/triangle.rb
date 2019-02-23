class Triangle

  attr_accessor :base, :b, :c

  def initialize(base,b,c)
    @base = base
    @b = b
    @c = c
  end

  def kind
    values = [@base, @b, @c]
    max = values.delete_at(values.index(values.max))
    if values.sum <= max
      begin
        raise TriangleError
      # rescue TriangleError => err
      #    err.print_error
      end
    else
      return :equilateral if (@base == @b) && (@b == @c)
      return :isosceles if (@base == @b) || (@base == @c) || (@b == @c)
      return :scalene
    end
  end

  class TriangleError < StandardError
    def print_error
      "Triangle not valid"
    end
  end
end
