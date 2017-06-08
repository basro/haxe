package unit.issues;

class IssueWtfCpp extends unit.Test {
	@:analyzer(ignore)
	function test() {
		var t_x;
		t_x = 1;
		var tmp1 = {
			var tmp = t_x;
			var inlA_x;
			var x = t_x;
			inlA_x = x;
			inlA_x;
		};
		eq(1, tmp1);
		var tmp2 = {
			var inlA_x;
			inlA_x = 2;
			inlA_x;
		};
		eq(2, tmp2);
	}
}
