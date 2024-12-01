-- Define a custom data type for a binary tree
data Tree a = Empty | Node a (Tree a) (Tree a)

-- Insert a new element into the tree, maintaining order (CORRECTED)
insert :: Ord a => a -> Tree a -> Tree a
insert x Empty = Node x Empty Empty
insert x (Node val left right)
  | x <= val = Node val (insert x left) right
  | otherwise = Node val left (insert x right)

-- Convert the tree to a sorted list (in-order traversal)
toList :: Tree a -> [a]
toList Empty = []
toList (Node val left right) = toList left ++ [val] ++ toList right

main :: IO ()
main = do
  let tree = insert 3 Empty
      sortedList = toList tree
  print sortedList  -- Output: [3]