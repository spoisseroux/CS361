/**
 * 
 */
package mystack;

/**
 * @author spencer poisseroux
 *
 */

// Stack using generics

// Complete the provided code

public class MyStack<T> {

	private class MyNode<T1> {
		T1 val;
		MyNode<T1> next;

		MyNode(T1 v, MyNode<T1> n) {
			val = v;
			next = n;
		}
	}

	private MyNode<T> theStack = null;

	/**
	 * 
	 */
	public MyStack() {
	}

	public T pop() {
		// TODO To complete
		T popElt = theStack.val;
		theStack = theStack.next;
		return popElt;
	}

	public void push(T v) {
		// TODO To complete
		theStack = new MyNode<T>(v, theStack);
	}

	
	/**
	 * @param args
	 */
	public static void main(String[] args) {
		// TODO To complete
		// Create a stack of Integer
		// Push 1 and 2
		// Pop
		// Push 5
		MyStack<Integer> s = new MyStack<Integer>();
		s.push(1);
		s.push(2);
		s.pop();
		s.push(5);
		
		// TODO To complete
		// Create a stack of Person
		// Push a person p1 with your name
		// Push a person p2 with my name
		MyStack<Person> p = new MyStack<Person>();
		Person p1 = new Person("Spencer", "Poisseroux");
		Person p2 = new Person("Christelle", "Scharff");
		p.push(p1);
		p.push(p2);
	}

}
