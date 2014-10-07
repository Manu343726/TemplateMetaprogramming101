
/*
 * Template Metaprogramming 101: Metaprogramming examples, the Turbo library.
 * ==========================================================================
 *
 * "The Turbo Hello World"
 *
 * Manuel Sánchez Pérez, October 2014.
 */
 
 
/*
 * The Turbo metaprogramming library is my attempt to make metaprogramming in C++
 * an easy (or at least reasonable) task, avoiding ugly constructs in favor of high-level (meta)programming
 * facilities.
 *
 * Turbo is developed through a repository hosted on github, https://github.com/Manu343726/Turbo.git, but
 * the library is designed to be used in a simple way via biicode dependencies manager. The project is
 * organised as three blocks:
 *
 * - manu343726/turbo_core: This block contains the main features of the library. These features are  tightly 
 *   coupled, so an umbrella header manu343726/turbo_core/turbo_core.hpp is provided.
 * - manu343726/turbo_utils: Several runtime/compile-time utils developed thanks to Turbo features.
 * - manu343726/turbo_computing: Compile-time computing features, such as fixed-point and floating-point
 *   implementations.
 */
  
 /*
  * This simple example shows how Turbo could be set up and used easily using biicode.
  * First (And only!) include the umbrela header from the core block:
  */
   
#include "manu343726/turbo_core/turbo_core.hpp"

//Do you remember our friend the typelist? Lets build a compile-time string
//as a typelist of characters:

using string = tml::char_list<'h','e','l','l','o',' ','w','o','r','l','d','!'>;

//But Manu, that are values, not types. You are correct. Turbo uses type parameters whenever
//possible, passing values as boxed types ike std::integral_constant. In this case, Turbo defines an 
//alias tml::char_list, which is just an alias for a tml::list<std::integral_constant<char,Chars>...>.


//Ok, we have a "compile-time string". Having data at compile-time and doing operations on it is awesome,
//but if we can't take the results at runtime, all that work has no much sense, isn't?
//Turbo defines the function template tml::to_runtime<T>() designed to take the runtime equivalent of the 
//type T.
//Following with our string example, we can take the runtime equivalent of that string, a char array, thanks
//to tml::to_runtime(). Note that to_runtime is designed with no runtime overhead in mind, Think of it as a 
//trigger for the compiler to place the computed values on the executable.

int main()
{
    for(char c : tml::to_runtime<string>())
        std::cout << c;
}