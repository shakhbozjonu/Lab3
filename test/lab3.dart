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
  int num1 = 7; // change to check
  print(isPrime(num1) ? "The number $num1 is prime" : "The number $num1 is not prime");
}



String checkOddEven(int number) {
  if (number % 2 == 0) {
    return "The number $number is even";
  } else {
    return "The number $number is odd";
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

bool isPrime(int num1) {
  if (num1 < 2) {
    return false;
  }

  for (int i = 2; i * i <= num1; i++) {
    if (num1 % i == 0) {
      return false;
    }
  }

  return true;
}
