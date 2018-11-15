require_relative 'node'

class BinarySearchTree

  def initialize(root)
    @root = root
  end

  def insert(root, node)
    if node.rating <= root.rating && root.left == nil
      root.left = node
    elsif node.rating <= root.rating && root.left != nil
      insert(root.left, node)
    elsif node.rating > root.rating && root.right == nil
      root.right = node
    elsif node.rating > root.rating && root.right != nil
      insert(root.right, node)
    end
  end

  # Recursive Depth First Search
  def find(root, data)
    return nil if data == nil || root == nil
    if root.left
      if root.left.title == data
        return root.left
      else
        return find(root.left, data)
      end
    elsif root.right
      if root.right.title == data
        return root.right
      else
        return find(root.right, data)
      end
    end
  end

  def delete(root, data)
    return nil if root == nil || data == nil
    
  end

  # Recursive Breadth First Search
  def printf(children=nil)
  end

end

