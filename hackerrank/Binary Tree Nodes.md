# Binary Tree Nodes

https://www.hackerrank.com/challenges/binary-search-tree-1/problem?isFullScreen=false

### Problem

You are given a table, *BST*, containing two columns: *N* and *P,* where *N* represents the value of a node in *Binary Tree*, and *P* is the parent of *N*.

![https://s3.amazonaws.com/hr-challenge-images/12888/1443818507-5095ab9853-1.png](https://s3.amazonaws.com/hr-challenge-images/12888/1443818507-5095ab9853-1.png)

Write a query to find the node type of *Binary Tree* ordered by the value of the node. Output one of the following for each node:

- *Root*: If node is root node.
- *Leaf*: If node is leaf node.
- *Inner*: If node is neither root nor leaf node.

**Sample Input**

![https://s3.amazonaws.com/hr-challenge-images/12888/1443818467-30644673f6-2.png](https://s3.amazonaws.com/hr-challenge-images/12888/1443818467-30644673f6-2.png)

**Sample Output**

```
1 Leaf
2 Inner
3 Leaf
5 Root
6 Leaf
8 Inner
9 Leaf

```

**Explanation**

The *Binary Tree* below illustrates the sample:

![https://s3.amazonaws.com/hr-challenge-images/12888/1443773633-f9e6fd314e-simply_sql_bst.png](https://s3.amazonaws.com/hr-challenge-images/12888/1443773633-f9e6fd314e-simply_sql_bst.png)

### Submissions

```sql
/*
1. CASE END
1-1. ROOT : WHEN P IS NULL 
1-2. INNER : WHEN N IN (SELECT P FROM BST)
1-3. LEAF : ELSE
2. ORDER BY N
*/

SELECT N,
    CASE
        WHEN P IS NULL THEN 'Root'
        WHEN N IN (SELECT P FROM BST) THEN 'Inner'
        ELSE 'Leaf'
    END
  FROM  BST
 ORDER
    BY  N;
```