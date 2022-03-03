require_relative './enumerable'

# Create a class MyList that has an instance variable @list.
class MyList
  include Enumerable
  def initialize(*list)
    @list = list
  end

  #  method #each that yields successive members of @list
  def each(&block)
    return to_enum(:each) unless block_given?

    counter = 0
    while counter < @list.size
      yield @list[counter]
      counter += 1
    end
    @list
  end
  end
end

# Create our list
list = MyList.new(1, 2, 3, 4)
# <MyList: @list=[1, 2, 3, 4]>

# Test #all?
list.all? { |e| e < 5 }
# => true
list.all? { |e| e > 5 }
# => false

# Test #any?
list.any? { |e| e == 2 }
# => true
list.any? { |e| e == 5 }
# => false

# Test #filter
list.filter(&:even?)
# => [2, 4]
