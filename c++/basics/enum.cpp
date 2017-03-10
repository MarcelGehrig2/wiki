

// unscoped enum (not good)
enum Color { black, white, red }; 	// black, white, red are in same scope as Color
auto white = false; 				// error! white already declared in this scope


//scoped enum (prefered)
enum class Color { black, white, red }; // black, white, red are scoped to Color
auto white = false; // fine, no other "white" in scope
Color c = white; 	// error! no enumerator named "white" is in this scope
Color c = Color::white;		// fine
auto c = Color::white; 		// also fine


