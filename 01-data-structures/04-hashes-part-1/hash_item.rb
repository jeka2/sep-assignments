class HashItem
  attr_accessor :key
  attr_accessor :value

  def initialize(key, value)
    @key = key
    @value = value
  end

  def value
    @value
  end
  
end