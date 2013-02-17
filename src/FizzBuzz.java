
public class FizzBuzz {

	/**
	 * @param args
	 * it prints fizz for odd and buzz for even no. whereas fizzbuzz for devisor of 5
	 */
	public static void main(String[] args) {
		System.out.println("Fizz buzz");
		fb();
	}
	public static void fb(){
		int x = 15;
		for (int i = 1; i <= x; i++) {
			if(((i % 2) == 0) | ((i % 5) == 0)){
				if ((i % 5) == 0) {
					System.out.println(i + "     Fizz Buzz");
				}else{System.out.println(i + "  Buzz");}
			}else{System.out.println(i + "   Fizz");}
		}
	}
//	other apporach to FizzBuzz, try some other approach, following doesnt work
	public static void otherFb(){
		int x = 15;
		for (int i = 0; i < x; i++) {
			if ((i % 3) == 0) {
				System.out.println(i + " - fizz");
			}else if (((i % 5) == 0) | ((i % 2) == 0)) {
				if ((x % 5) == 0){					
					System.out.println(i + " - fizzBuzz");
				}else{System.out.println(i + " - Buzz");}
			}
		}
	}

}
