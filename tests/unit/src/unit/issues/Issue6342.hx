package unit.issues;

class Issue6342 extends unit.Test {
	function test() {
		var t = new A(1);
		var tmp1 = t.foo().x;
		eq(1, tmp1);
		
		var tmp2 = ({
			new A(2);
		}).x;
		eq(2, tmp2);
	}
}

private class A
{
	public var x:Int;
	
	public inline function new(x) {
		this.x = x;
	}
	
	public inline function foo() {
		var tmp = x;
		return new A(x);
	}
}