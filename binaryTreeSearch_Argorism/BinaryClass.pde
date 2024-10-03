//BinaryClass
//improved: depth
//          line brake

class BinaryClass{
  int own;
  BinaryClass leftB;
  BinaryClass rightB;
  int depth;
  
  //for rootNode
  BinaryClass(int o)
  {
    own = o;
    leftB = null;
    rightB = null;
    this.depth = 0;
  }
  
  //for childNode
  BinaryClass(int o,int d)
  {
    own = o;
    leftB = null;
    rightB = null;
    this.depth = d+1;
  }
  
  void insert(int newValue)
  {
    if(newValue < this.own)
    {
      if(this.leftB == null)
      {
        leftB = new BinaryClass(newValue,this.depth);
      }
      else
      {
        leftB.insert(newValue);
      }
    }
    else if(newValue > own)
    {
      if(this.rightB == null)
      {
        rightB = new BinaryClass(newValue,this.depth);
      }
      else
      {
        rightB.insert(newValue);
      }
    }
  }
  
  String search(int target)
  {
    if(own == target)
    {
      return "found: " + this.own + System.lineSeparator() + "depth: " + this.depth;
    }
    else if(own <target)
    {
      if(rightB != null)
      {
        return this.rightB.search(target);
      }
      else
      {
        return "Not Found";
      }
    }
    else
    {
      if(leftB != null)
      {
        return leftB.search(target);
      }
      else
      {
        return "Not Found";
      }
    }
  }
}
