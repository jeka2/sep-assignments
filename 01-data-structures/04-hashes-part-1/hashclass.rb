class HashClass
  require_relative 'hash_item'
  require 'pry'

  def initialize(size)
    @size = size
    @items = Array.new(@size)
  end

  def []=(key, value)
    new_item = HashItem.new(key, value)
    new_index = index(key, @size)
    if(@items[new_index] == nil || @items[new_index].value == value)
      @items[new_index] = new_item
    else
      @items << new_item
      resize
    end
  end

  def [](key)
    new_index = index(key, @size)
    @items[new_index].value
  end

  def resize
   @size = @size * 2
   items_to_reindex = @items.compact
   @items = Array.new(@size)
   resize_indexer(items_to_reindex)
  end

  def resize_indexer(items_to_reindex)
    items_to_reindex.each do |item|
      new_index = index(item.key, @size)
      @items[new_index] = item
    end
  end

  def index(key, size)
    holder = 0
    key.to_s.each_byte do |c|
      holder += c
    end
    new_index = holder % size
  end


  # Simple method to return the number of items in the hash
  def size
    @size                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    
  end

  def items
    @items
  end
  

end