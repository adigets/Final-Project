class BinarySearchTree {

  private TreeNode root;
  private TreeNode current;

  public BinarySearchTree() {
    root=null;
  }

  TreeNode buildTree() {
    
    root = new TreeNode("Do you like STEM (left) or arts and humanities (right)?");
    //level one
    root.setLeft(new TreeNode("Comp Sci (left) or Naw (right)?"));
    root.setRight(new TreeNode("Social Studies (left) or Language (right)?"));
    //level two
    root.getLeft().setLeft(new TreeNode("All the comp sci (left) or just a little comp sci (right)?"));
    root.getRight().setRight(new TreeNode("English (left) or Spanish (right)?"));
    root.getLeft().setRight(new TreeNode("Math (left) or yuck, no (right)?"));
    root.getRight().setLeft(new TreeNode("History (left) or ew, absolutely not (right)?"));

    //level three left sub tree
    root.getLeft().getLeft().setLeft(new TreeNode("Dr. R!"));
    root.getLeft().getLeft().setRight(new TreeNode("Mr. Fendrich!"));
    root.getLeft().getRight().setLeft(new TreeNode("Gimmie only math (left) or yeah math but other stuff too (right)?"));
    root.getLeft().getRight().setRight(new TreeNode("Mr. Brott!"));

    //level three right sub tree
    root.getRight().getRight().setRight(new TreeNode("Literature (left) or Language (right)?"));
    root.getRight().getRight().setLeft(new TreeNode("Ms. McGovern!"));
    root.getRight().getLeft().setLeft(new TreeNode("Ms. Rauseur!"));
    root.getRight().getLeft().setRight(new TreeNode("Civics (left) or Econ (right)?"));
    
    //level four left sub tree
    root.getLeft().getRight().getLeft().setLeft(new TreeNode("Stats (left) or Calc (right)?"));
    root.getLeft().getRight().getLeft().setRight(new TreeNode("Mr. Kuehn!"));
    
    //level four right sub tree
    root.getRight().getRight().getRight().setLeft(new TreeNode("Mr. Kauffeld (Profe)!"));
    root.getRight().getRight().getRight().setRight(new TreeNode("Senora Fendrich!"));
    root.getRight().getLeft().getRight().setLeft(new TreeNode("Ms. Kasper!"));
    root.getRight().getLeft().getRight().setRight(new TreeNode("Mr. Cassano!"));
    
    //level five left sub tree
    root.getLeft().getRight().getLeft().getLeft().setLeft(new TreeNode("Mr. Flo!"));
    root.getLeft().getRight().getLeft().getLeft().setRight(new TreeNode("Mr. Fendrich!"));
    
    current = root;
    return current;
  }

  TreeNode returnTree() {
    current = root;
    return root;
  }

  private void inorder() {
    inorder(root);
  }

  public void inorder(TreeNode t) {
    if (t!=null) {
      inorder(t.getLeft());
      System.out.println(t.getValue());
      inorder(t.getRight());
    }
  }
}
