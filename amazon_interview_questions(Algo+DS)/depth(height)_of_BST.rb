# Write a program to find depth (height) of binary search tree without using recursion
#  https://www.youtube.com/watch?v=E5CIM-A1rrU
#
# find height using level order traversal
#
# T.C = O(n)
#
# depth: number of the nodes on the longest path from root to deepest node

class BSTNode
  attr_accessor :left, :right, :value

  def initialize(val)
    @value = val
    @left = nil
    @right = nil
  end
end

def depth_of_bst(root)

if root == nil
  return 0
end

  queue = [root]
  depth = 0
 while true
   node_count = queue.size

   if node_count == 0
     return depth
   end
   depth = depth + 1

   while node_count > 0
     temp_node = queue.shift

     if temp_node.left != nil
       queue.push(temp_node.left)
     end

     if temp_node.right != nil
       queue.push(temp_node.right)
     end

     node_count = node_count - 1
   end

 end

end



root = BSTNode.new(1)
root.right = BSTNode.new(3)
root.left = BSTNode.new(2)
root.left.left = BSTNode.new(4)
root.left.right = BSTNode.new(5)

p depth_of_bst(root)