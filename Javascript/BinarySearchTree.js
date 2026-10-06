class TreeNode {
  constructor(value) {
    this.value = value;
    this.left = null;
    this.right = null;
  }
}

class BST {
  constructor() {
    this.root = null;
  }
  insert(value) {
    const newNode = new TreeNode(value);
    if (!this.root) {
      this.root = newNode;
      return;
    }
    const insertNode = (node) => {
      if (value < node.value) {
        if (!node.left) node.left = newNode;
        else insertNode(node.left);
      } else {
        if (!node.right) node.right = newNode;
        else insertNode(node.right);
      }
    };
    insertNode(this.root);
  }
  inorder(node = this.root, result = []) {
    if (node) {
      this.inorder(node.left, result);
      result.push(node.value);
      this.inorder(node.right, result);
    }
    return result;
  }
}

const bst = new BST();
[8, 3, 10, 1, 6, 14].forEach(n => bst.insert(n));
console.log(bst.inorder()); 