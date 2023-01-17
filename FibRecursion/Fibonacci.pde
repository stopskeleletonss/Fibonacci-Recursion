class fibonacci {

  long[] numbers; //array to store fibonacci numbers
  int n = 10; //which fibonacci number is to be returned (nth fibonacci number)

  fibonacci() {
    numbers = new long[n+1]; //stores the fibonacci numbers
  }

  long fibonaccinum(int n) { //store and then return the nth fibonacci number
    if (n<=1) { //if n is 0 or 1
      return n; //return 1
    }

    if (numbers[n]!=0) { //if the nth fibonacci number in the array has been determined
      return numbers[n]; //return the nth fibonacci number
    }

    long nthNumber = (fibonaccinum(n-1)+fibonaccinum(n-2)); //determines the next fibonacci number 
    numbers[n] = nthNumber; //stores the nth fibonacci number in the fibonacci array
    return nthNumber; //returns the nth fibonacci number
  }
}
