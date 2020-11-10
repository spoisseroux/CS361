-3;

-3+2;

-sqrt(2.0);

-not(true);

-true andalso false;

-1.2;

-12;

-true;

-"string";

-val three = 3;

-three;

-val five = 3 + 2;

-three + five;

- fun double(x) = 2*x;

-double(222);

-double(2.0)

-fun max(x:int, y:int, z:int) =
=	if((x>y) andalso (x>z)) then x
=		.else (if (y>z) then y else z);

-max(3,2,2);

-fun factorial(x) = if x=0 then 1
=	else x*factorial(x-1);

-factorial(5);
-factorial(10);

-fun gcd(m,n):int = if m=n then n
=			else if m>n then gcd(m-n,n)
=				else gcd(m,n-m);

-gcd(12,30);
-gcd(1,20);
-gcd(126,3257);
-gcd(125,56345);

-val t1 = (1,2,3);
-val t2 = (4,(5.0,6));
-val t3 = (7,8.0,"nine");

- #1(t1);
- #1(t2);
- #2(t2);
- #2(#2(t2));
- #3(t3);
- #4(t3);

-[1,2,3];
-[true,false,true];
-[[1,2,3],[4,5],[6]];
-[1,[2]];
-[];
-nil;

-hd[1,2,3];
-hd[[1,2],[3]];

-tl[1,2,3];
-tl[[1,2],[3]];

-hd;
-tl;

-5::[];
-1::[2,3];
-[1,2]::[[3],[4,5,6,7]];
-[1]::[2,3];
-[1,2,3]=[1,2,3];
-[1,2]=[2,1];
-tl[1] = [];

-concat([1,2],[3]);
-concat([],[1,2]);
-concat([1,2],[]);

-[1,2,3]=1::[2,3];

- fun concat(x,y) = if x=[] then y
= else hd(x)::concat(tl(x),y);

- concat([1,2],[3,4,5]);

- concat([],[1,2]);

- concat([1,2],[]);

- fun length(L) =
      =     if (L=nil) then 0
      =     else 1+length(tl(L));

- length[1,2,3];

- length[[5],[4],[3],[2,1]];

- length[];


- fun doubleall(L) =
      =     if L=[] then []
      =     else (2*hd(L))::doubleall(tl(L));

- doubleall[1,3,5,7];

- fun reverse(L) =
      =     if L = nil then nil
      =     else reverse(tl(L)) @ [hd(L)];

- reverse [1,2,3];

- reverse nil;

- (1,2) = (2,3);

- [1, 2] = [1, 2, 3];

- [1, 2] <> [1, 2, 3];

- 1.2 = 1.2;

- fun reverse(nil) = nil
= | reverse(x::xs) = reverse(xs) @ [x];

- fun fact(0) = 1
= | fact(n) = n*fact(n-1);

fun reverse(L) =
if L = nil then nil
else reverse(tl(L)) @ [hd(L)];

fun reverse1(nil) = nil
| reverse1(x::L) = reverse(L) @ [x];

- fun apply(f,L) =
      =     if (L=[]) then []
= else f(hd(L))::(apply(f,tl(L)));

- fun square(x) = (x:int)*x;

- apply(square,[2,3,4]);

- apply(double,[1,3,5,7]);

fun apply(f,L) =
if (L=[]) then []
else f(hd(L))::(apply(f,tl(L)));

fun exp(x,0) = 1
| exp(x,y) = x * exp(x, y-1);

fun exp1 x 0 = 1
| exp1 x y = x * exp1 x y-1;

fun plus n Zero = n
| plus n (Suc(p)) = Suc(plus n p);

fun times n Zero = Zero
| times n (Suc(p)) = plus (times n p) n;

fun natint Zero = 0
| natint (Suc(n)) = natint(n) + 1;

fun intnat 0 = Zero
| intnat n = Suc(intnat(n-1));


- datatype ’a BinaryTree = btempty |
= bt of ’a * ’a BinaryTree * ’a BinaryTree ;

-val Tree = bt(2,btempty,
= bt(3,btempty,
=   bt(7,bt(6,bt(5,btempty,btempty),
=     btempty),
=       bt(8,btempty,btempty))
=));

- fun lookup (btempty, ) = false
= lookup(bt(root:int,left,right),x:int)
=   if (x = root) then true
=     else (if (x <= root) then lookup(left,x)
=       else lookup(right,x) );

- lookup(Tree,6);

- lookup(Tree,1);

- lookup(Tree,9);

- lookup(Tree,8);

- lookup(btempty,6);

fun inorder (btempty) = []
    |  inorder(bt(root:’a,left,right)) =
    inorder(left) @ (root ::  inorder(right));


fun preorder (btempty) = []
    |  preorder(bt(root:’a,left,right)) =
    root ::  (preorder(left) @ preorder(right));


fun postorder (btempty) = []
    |  postorder(bt(root:’a,left,right)) =
    (postorder(left) @ postorder(right)) @ (root ::
    []);

val Expression = = bt("+",
    bt("*",
        bt("+",
           bt("2",btempty,btempty),
           bt("5",btempty,btempty) ),
        bt("*",
           bt("3",btempty,btempty),
           bt("4",btempty,btempty) ) ),
     bt("*",
        bt("1",btempty,btempty),
        bt("6", btempty, btempty)));

- inorder(Expression);

- preorder(Expression);

- postorder(Expression);

datatype ’a BinaryTree = btempty |
bt of ’a * ’a BinaryTree * ’a BinaryTree ;

fun left subtree btempty = btempty | left subtree(bt( ,left, )) = left;

fun right subtree btempty = btempty
| right subtree(bt( , ,right)) = right;

exception label has nil argument;

fun label btempty = raise label has nil argument | label(bt(value, , )) = value;

val Tree = bt(2,btempty,
bt(3,btempty,
bt(7,bt(6,bt(5,btempty,btempty),
btempty),
bt(8,btempty,btempty))
)
);

val Tree1 = bt(3,btempty,btempty);
val Tree2 = bt(5,bt(1,btempty,btempty),btempty);
val Tree3 = bt(7,bt(4,btempty,btempty),
bt(12,btempty,btempty));
val Tree4 = bt("*",
bt("/", bt("-",bt("7",btempty,btempty), bt("a",btempty,btempty) ), bt("5",btempty,btempty) ), bt("exp", bt("+",bt("a",btempty,btempty), bt("b",btempty,btempty) ), bt("3",btempty,btempty) ));
val Expression = bt("+",
bt("*",
bt("+",
bt("2",btempty,btempty),
bt("5",btempty,btempty) ),
bt("*",
bt("3",btempty,btempty),
bt("4",btempty,btempty) ) ),
bt("*",
bt("1",btempty,btempty),
bt("6",btempty,btempty) ) );
lookup(Tree,6);

lookup(Tree,1);
lookup(Tree,8);
lookup(Tree,9);
lookup(btempty,6);
inorder(Tree);
preorder(Tree);
postorder(Tree);
inorder(Expression);
preorder(Expression);
postorder(Expression);
