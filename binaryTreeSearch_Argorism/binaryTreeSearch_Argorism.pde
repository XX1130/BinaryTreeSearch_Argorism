//binaryTreeSearch

BinaryClass root = new BinaryClass(6,0);

void setup()
{
  root.insert(3);
  root.insert(1);
  root.insert(4);
  root.insert(10);
  root.insert(12);
  root.insert(8);
  root.insert(7);
  
  println(root.search(6));
}
