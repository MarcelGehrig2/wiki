// http://cboard.cprogramming.com/cplusplus-programming/64340-purpose-public-class-name.html

class PrivD : private   B { };		// private inheritance
class ProtD : protected B { };
class PublD : public    B { };

// privat inheritance:
//	public 		-> 		privat
//	protected	->		privat
//	privat		stays	privat

// protected inheritance:
//	public 		-> 		protected
//	protected	stays	protected
//	privat		stays	privat

// privat inheritance:
//	public 		stays	public
//	protected	stays	protected
//	privat		stays	privat