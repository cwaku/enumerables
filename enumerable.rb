module Enumerable
  def all?(&block)
    result = true
    each { |element| result = false unless block.call(element) }
    result
  end

  def any?(&block)
    result = false
    each { |element| result = true if block.call(element) }
    result
  end

  def filter?(&block)
    # Returns elements selected by the block.
    self.select { |item| block.call(item) }
  end
end
