class BSTNode
  attr_accessor :value, :left, :right

  def initialize(value)
    @value = value
    @left = nil
    @right = nil
  end
end


class Queue
  def initialize
    @data = []
  end

  def enqueue(element)
    @data.push(element)
  end

  def dequeue
    @data.shift
  end

  def empty?
    @data.empty?
  end
end

def print_bst_elements(root)
  return nil if root == nil

  print " #{root.value}"
  print_bst_elements(root.left)
  print_bst_elements(root.right)

end

def create_BST(arr)

  root = BSTNode.new(arr[0])

  n = arr.length - 1
  (1..n).each do |i|
    p = root
    while true
      if arr[i] <= p.value
        if p.left == nil
          p.left = BSTNode.new(arr[i])
          break
        else
          p = p.left
        end
      elsif arr[i] > p.value
        if p.right == nil
          p.right = BSTNode.new(arr[i])
          break
        else
          p = p.right
        end
      end
    end

  end
 return root

end

def bst_node_insertion(root, data)

  if root == nil
    root = BSTNode.new(data)
    return root
  end

  new_node = BSTNode.new(data)
  p = root
  while true
    if new_node.value > p.value
      if p.right == nil
        p.right = new_node
        break
      else
        p = p.right
      end
    elsif new_node.value <= p.value
      if p.left == nil
        p.left = new_node
        break
      else
        p = p.right
      end
    end
  end

  return root
end

# pre-order: <root> <left> <right>
#
# First draw path from root to each node and mark direction on path and visit nodes as per path direction
# consider 1st visited nodes in path and ignore same nodes, if visited again

def pre_order_traversal(root)
  return nil if root == nil

  print " #{root.value}"
  pre_order_traversal(root.left)
  pre_order_traversal(root.right)
end

#post-order: <left> <right> <root>
# First draw path from root to each node and mark direction on path and visit nodes as per path direction
# Ignore nodes which are going to visit again and consider nodes which are visited to last

def post_order_traversal(root)
  return nil if root == nil

  post_order_traversal(root.left)
  post_order_traversal(root.right)
  print " #{root.value}"
end

# in-order: <left> <root> <right>
#
# Draw straight line from each node w/o having intersection and go from beginning node to end node
def in_order_traversal(root)
  return nil if root == nil

  in_order_traversal(root.left)
  print " #{root.value}"
  in_order_traversal(root.right)
end


# visit nodes as per level

def level_order_traversal_bst(root)

  # queue = Queue.new
  # queue.enqueue(root)
  #
  # while !queue.empty?
  #
  #   temp_node = queue.dequeue
  #
  #   print " #{temp_node.value}"
  #
  #   if temp_node.left != nil
  #     queue.enqueue(temp_node.left)
  #   end
  #
  #   if temp_node.right != nil
  #     queue.enqueue(temp_node.right)
  #   end
  # end


  queue = []
  queue.push(root)

  while !queue.empty?
    temp_node = queue.shift

    # p temp_node
    print " #{temp_node.value}"

    if temp_node.left != nil
      queue.push(temp_node.left)
    end

    if temp_node.right != nil
      queue.push(temp_node.right)
    end
  end
end




def vertical_order_traversal_bst(root)
  if root == nil
    return nil
  end

  h = Hash.new{|h,k| h[k]=[]}
  queue1 = [root]        # to store nodes

  queue2 = [0]        # to store horizontal distance hd

  min = 0
  max = 0

  while !queue1.empty?
    temp_node = queue1.shift
    parent_hd = queue2.shift

    h[parent_hd] << temp_node.value

    if temp_node.left != nil
      queue1.push(temp_node.left)
      queue2.push(parent_hd-1)
      if (parent_hd-1) <= min
        min = parent_hd - 1
      end
    end

    if temp_node.right != nil
      queue1.push(temp_node.right)
      queue2.push(parent_hd+1)
      if (parent_hd+1) >= max
        max = parent_hd + 1
      end
    end

  end

  (min..max).each do |i|
    print " #{h[i].join(' ')}"
  end

end


def lowest_common_ancestor(root, n1, n2)

  #1) recursive way

  # if root == nil
  #   return nil
  # end
  # if root.value > n1 && root.value > n2
  #   return lowest_common_ancestor(root.left,n1,n2)
  # elsif root.value < n1 && root.value < n2
  #   return lowest_common_ancestor(root.right,n1,n2)
  # else
  #   return root.value
  # end

  #2) iterative way

  while root != nil
    if root.value > n1 && root.value > n2
      root = root.left
    elsif root.value < n1 && root.value < n2
      root = root.right
    else
      break
    end
  end
  return root.value

end

def findNode(root,val)

  return nil if root == nil
  while root != nil
    break if root.value == val
    if root.value < val
      root = root.right
    else
      root = root.left
    end
  end

  return root.value

end

arr = [12,18,11,1,3,20,17,19]
#
# arr = [4,2,7,1,3]

# bst = create_BST(arr)
bst = create_BST(arr)

# p pre_order_traversal(bst)
# p post_order_traversal(bst)
# p in_order_traversal(bst)

# level_order_traversal_bst(bst) # https://www.youtube.com/watch?v=86g8jAQug04
#
# bst1 = bst_node_insertion(bst,6)
# p bst1
#
# p print_bst_elements(bst1)
#
# vertical_order_traversal_bst(bst)
#
#
p lowest_common_ancestor(bst,17,19)  # 18
p lowest_common_ancestor(bst,1,20)   # 12
p lowest_common_ancestor(bst,12,20)  # 12

p findNode(bst,12)

