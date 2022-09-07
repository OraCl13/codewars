class Node
  attr_accessor :data,:left,:right
  def initialize data
    @data=data
    @left=@right=nil
  end
end

def push_node(node, value)
  if(value > node.value)
    if(node.right)
      pushNode(node.right, value)
    else
      node.right = Node.new(value)
    end
  else
    if(node.left)
      pushNode(node.left, value)
    else
      node.left = Node.new(value)
    end
  end
end

root=nil
root=insert(root,11)
insert(root,9)
insert(root,12)
insert(root,155)
insert(root,2)
insert(root,10)
preorder root
puts