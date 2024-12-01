-- Define a custom data type for a binary tree
data Tree a = Empty | Node a (Tree a) (Tree a)

-- Insert a new element into the tree, maintaining order
insert :: Ord a => a -> Tree a -> Tree a
insert x Empty = Node x Empty Empty
insert x (Node val left right)
  | x <= val = Node val (insert x left) right  -- Insert to the left if smaller or equal
  | otherwise = Node val left (insert x right) -- Insert to the right if larger

-- Convert the tree to a sorted list (in-order traversal)
toList :: Tree a -> [a]
toList Empty = []
toList (Node val left right) = toList left ++ [val] ++ toList right

main :: IO ()
main = do
  let tree = insert 3 Empty  -- Insert only the value 3 initially.
      sortedList = toList tree
  print sortedList  -- Expected output: [3]
