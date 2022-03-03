module enumerable
  def all?(&block)
    return true if self.empty?
    self.each do |item|
      return false unless block.call(item)
    end
    true
  end

  def any?(&block)
    return true if self.empty?
    self.each do |item|
      return true if block.call(item)
    end
    false
  end

  def filter? (&block)
    self.select {|item| block.call(item)}
  end

end