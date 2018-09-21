# Complete the preOrder function in your editor below, which has  parameter:
# a pointer to the root of a binary tree. It must print the values in the tree's preorder traversal
# as a single line of space-separated values.
#
# Input Format
#
# Our hidden tester code passes the root node of a binary tree to your preOrder function.
#
# Constraints
#
#  Nodes in the tree
#
# Output Format
#
# Print the tree's preorder traversal as a single line of space-separated values.
#
# Sample Input
#
#      1
#       \
#        2
#         \
#          5
#         /  \
#        3    6
#         \
#          4
# Sample Output
#
# 1 2 5 3 4 6

class BTNode
  attr_accessor :value, :left, :right

  def initialize(value)
    @value = value
    @left = nil
    @right = nil
  end

end

# https://gist.github.com/ralbt/8c92917a945897d442c5dce157e2f884 - queue implementation using linked list

# pre-order: <root> <left> <right>
#
# First draw path from root to each node and mark direction on path and visit nodes as per path direction
# consider 1st visited nodes in path and ignore same nodes, if visited again

def preOrder(root)  # O(n)

  return nil if root == nil

  print " #{root.value}"
  preOrder(root.left)
  preOrder(root.right)

end

# pre-order traversal with iterative manner
#
def preOrderTraversal(root)
  return nil if root == nil

  stack = [root]
  while !stack.empty?
    node = stack.pop
    print " #{node.value}"
    if node.right != nil
      stack.push(node.right)
    end
    if node.left != nil
      stack.push(node.left)
    end
  end
end


#post-order: <left> <right> <root>
# First draw path from root to each node and mark direction on path and visit nodes as per path direction
# Ignore nodes which are going to visit again and consider nodes which are visited to last

def postOrder(root)
  return nil if root == nil

  postOrder(root.left)
  postOrder(root.right)
  print " #{root.value}"
end

# post-order traversal with iterative manner
#



# in-order: <left> <root> <right>
#
# Draw straight line from each node w/o having intersection and go from beginning node to end node

def inOrder(root)
  return nil if root == nil

  inOrder(root.left)
  print " #{root.value}"
  inOrder(root.right)
end


# two ways of implementation of find height

# height: no.s of edges from root node to longest leaf node
def height_edges(root)
  return -1 if root == nil

  left = height_edges(root.left)
  right = height_edges(root.right)

  if left > right
    h = 1 + left
  else
    h = 1 + right
  end

  return h

end

#height: no.s of nodes from root node to longest leaf node
def height_nodes(root)
  return 0 if root == nil

  left = height_nodes(root.left)
  right = height_nodes(root.right)

  if left > right
    h = 1 + left
  else
    h = 1 + right
  end

  return h

end

# height: no.s of edges from root to longest leaf node
def find_height_edges(root)
  return -1 if root == nil
  left_height = 1 + find_height_edges(root.left)
  right_height = 1 + find_height_edges(root.right)

  return (left_height > right_height)? left_height : right_height
end

# height: no.s of nodes from root to longest leaf node
def find_height_nodes(root)  # O(n)
  return 0 if root == nil
  left_height = 1 + find_height_nodes(root.left)
  right_height = 1 + find_height_nodes(root.right)

  return (left_height > right_height)? left_height : right_height
end




def level_order_traversal(root)  # https://www.youtube.com/watch?v=86g8jAQug04

 queue = [root]

 while !queue.empty?

   temp_node = queue.shift
   print " #{temp_node.value}"

   if temp_node.left != nil
     queue.push(temp_node.left)
   end

   if temp_node.right != nil
     queue.push(temp_node.right)
   end

 end


end

# https://hellohell.gitbooks.io/-shuati/content/binary_tree_vertical_order_traversal.html

def vertical_order_traversal(root)

  if root == nil
    return nil
  end

  h = Hash.new    # or 1) h = Hash.new {|h,k| h[k]=[]}  2) h = Hash.new {}

  queue1 = [root]   # to store nodes
  queue2 = [0]      # to store horizontal distance hd

  min = 0
  max = 0

  while !queue1.empty?
    temp_node = queue1.shift
    parent_hd = queue2.shift


    if !(h.has_key?(parent_hd))  #or 1) h[parent_hd] << temp_node.value
      h[parent_hd] = []          # 2) (h[parent_hd] ||= []) << temp_node.value
    end
    h[parent_hd].push(temp_node.value)

    if temp_node.left != nil
      queue1.push(temp_node.left)
      queue2.push(parent_hd-1)
      if parent_hd-1 <= min
        min = parent_hd - 1
      end
    end

    if temp_node.right != nil
      queue1.push(temp_node.right)
      queue2.push(parent_hd+1)
      if parent_hd >= max
        max = parent_hd + 1
      end
    end
  end
  (min..max).each do |i|
    print "#{h[i].join(' ')} "
  end
end


def top_view_traversal(root)

  if root == nil
    return nil
  end

  h = Hash.new {|h,k| h[k]=[]}

  queue1 = [root]         # to store nodes
  queue2 = [0]            # to store horizontal distance

  min = 0
  max = 0

  while !queue1.empty?
    temp_node = queue1.shift
    parent_hd = queue2.shift

    h[parent_hd] << temp_node.value

    if temp_node.left != nil
      queue1.push(temp_node.left)
      queue2.push(parent_hd-1)
      if parent_hd-1 <= min
        min = parent_hd - 1
      end
    end

    if temp_node.right != nil
      queue1.push(temp_node.right)
      queue2.push(parent_hd+1)
      if parent_hd+1 >= max
        max = parent_hd + 1
      end
    end
  end

  (min..max).each do |i|
    print "#{h[i][0]} "
  end

end



def lca(root, n1, n2)  # O(log(n))

  return nil if root == nil

  while( root != nil )
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


root = BTNode.new(1)
root.right = BTNode.new(2)
root.right.right = BTNode.new(5)
root.right.right.left = BTNode.new(3)
root.right.right.right = BTNode.new(6)
root.right.right.left.right = BTNode.new(4)
# p root

# preOrder(root)
# preOrderTraversal(root)

# postOrder(root)

# inOrder(root)
#
# p height_edges(root)
# p height_nodes(root)
#
# p find_height_edges(root)
# p find_height_nodes(root)
# level_order_traversal(root)
#
vertical_order_traversal(root)
#
top_view_traversal(root)
#
# p lca(root,3,6)
# p lca(root,2,6)
# p lca(root,1,2)