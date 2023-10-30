void main() {
  //1
  print('#1');
  print('Hi! I am Shakhbozjon Usmonov, I started coding in Dart!');

  //2
  print('#2');
  int number = 10; // Change this to the number you want to check
  print(checkOddEven(number));

  print('#3');
  print("even numbers:");
  for (int i = 0; i <= 100; i++) {
    if (i % 2 == 0) {
      print(i);
    }
  }

  print("\nOdd numbers:");
  for (int i = 0; i <= 100; i++) {
    if (i % 2 != 0) {
      print(i);
    }
  }

  //4
  print('#4');
  List<int> a = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89];
  List<int> b = [];

  for (int number in a) {
    b.add(number * number);
  }

  print("The original list is: $a");
  print("The new list with squared numbers is: $b");

  //5
  print('#5');
  int num = 4; // change to check
  printDivisors(number);

  //6
  print('#6');
  void main() {
    List<int> firstlist = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89];
    List<int> secondlist = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 89];

    List<int> matchingElement = firstlist.toSet().intersection(secondlist.toSet()).toList();
    print( matchingElement);
  }

  //7
  print('#7');
  int num2 = 7;
  print(isPrime1(num2) ? "The number $num2 is prime" : "The number $num2 is not prime");

  //8
  print('#8');
  List<int> numbers = [1, 1, 2, 3, 6, 7, 3];
  List<int> distinctNumbers = getDistinct(numbers);

  print("distinct elements are: $distinctNumbers");

  //9
  print('#9');
  int limit = 10;

  print("Fibonacci up to $limit using  loop:");
  printFibonacciLoop(limit);

  print("\nFibonacci up to $limit using recursion:");
  printFibonacciRecursion(limit);

  //10
  print('#10');
  print("????");

  //11
  print('#11'
      'WHITE FLAG: I used Github for this');
  String password = 'ohmybaby69'; // Change this to the password you want to check
  print('password $password strength is ${checkPasswordStrength(password)}');
}



String checkOddEven(int number) {
  if (number % 2 == 0) {
    return " number $number is even";
  } else {
    return "number $number is odd";
  }
}

void printDivisors(int num) {
  List<int> divisors = [];

  for (int i = 2; i <= num; i++) {
    if (num % i == 0) {
      divisors.add(i);
    }
  }

  print(" divisors of $num : $divisors");
}



//7
bool isPrime1(int num2) {
  if (num2 < 2) {
    return false;
  }

  for (int i = 2; i * i <= num2; i++) {
    if (num2 % i == 0) {
      return false;
    }
  }

  return true;}
//8
List<int> getDistinct(List<int> numbers) {
  return numbers.toSet().toList();
}

//9
void printFibonacciLoop(int limit) {
  int a = 0, b = 1;

  while (a <= limit) {
    print(a);
    int temp = b;
    b = a + b;
    a = temp;
  }
}

void printFibonacciRecursion(int limit, [int a = 0, int b = 1]) {
  if (a <= limit) {
    print(a);
    printFibonacciRecursion(limit, b, a + b);
  }
}

//11
String checkPasswordStrength(String password) {

  RegExp strongRegex = new RegExp(r'^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$');

  RegExp normalRegex = new RegExp(r'^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)[a-zA-Z\d]{8,}$');

  if (strongRegex.hasMatch(password)) {
    return 'strong';
  } else if (normalRegex.hasMatch(password)) {
    return 'normal';
  } else {
    return 'weak';
  }
}
