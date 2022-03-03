# Create a class MyList that has an instance variable @list.
class MyList
  def initialize(list)
    @list = list
  end

  #  method #each that yields successive members of @list
  def each(&block)
    @list.each(&block)
  end
end
