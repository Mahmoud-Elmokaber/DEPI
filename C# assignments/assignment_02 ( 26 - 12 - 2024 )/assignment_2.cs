using System.ComponentModel;
#region Q1 first 10 multiples of 5
//int count = 0;
//int value = 0;
//do
//{
//    Console.WriteLine(value + 5);
//    value += 5;
//    count += 1;

//} while (count < 10);

#endregion

#region Q2 factorial
//int fac(int n)
//{
//    if (n == 1)
//    {
//        return 1;
//    }
//    return n * fac(n - 1);
//}
//Console.Write("enter a numbr : ");
//int n = int.Parse(Console.ReadLine());
//Console.WriteLine("factorial of " + n + " = " + fac(n));
#endregion

#region Q3 sum of even numbers
//int sum = 0;
//for (int i = 2; i <= 100 ; i+=2)
//{
//    sum += i;
//}
//Console.WriteLine(sum);
#endregion

#region Q4 multiplication table
//Console.Write("     ");
//for ( int i = 1; i <= 12; i++)
//{
//    Console.Write(i + "\t");
//}
//Console.Write("\n");
//Console.Write("     ");
//for ( int i = 1;i <= 12; i++)
//{
//    Console.Write("__\t");
//}
//Console.Write("\n");
//for (int i = 1; i <= 12; i++)
//{
//    if ( i < 10)
//    Console.Write(i + "  | " );
//    else 
//    Console.Write(i + " | " );
//    for (int j = 1; j <= 12;j++)
//    {
//        Console.Write((i * j) + "\t");
//    }
//    Console.Write("\n");
//}

#endregion

#region Q5 prime numbers
//bool isPrime(int n)
//{
//if (n == 2)
//{
//    return false;
//}
//    for ( int i = 2; i < n / 2; i++ )
//    {
//        if ( n % i == 0 )
//        {
//            return false;
//        }
//    }
//    return true;
//}
//for (int i = 1; i <= 500 ;i++ )
//{
//    if (isPrime(i))
//        Console.Write(i + " ");
//}
#endregion

#region Q6 printing pattern
//string result = "";
//for (int i = 0; i < 26; i++)
//{
//    result += (char)(i + 'a');
//    Console.WriteLine(result);
//}

#endregion

#region Q7 min and max numbers
//int[] nums = new int[10]{10, 3,5,70,50,22,13,4,12,65};
//int min = nums[0];
//int max = nums[0];
//for (int i = 0;i < 10;i++)
//{
//    if (nums[i] < min)
//    {
//        min = nums[i];
//    }
//    else if(nums[i] > max) 
//    {
//        max = nums[i];
//    }

//}
//Console.WriteLine( "maximum number is : " + max);
//Console.WriteLine( "minimum number is : " + min);

#endregion

#region Q8 reverse array

//int[] nums = new int[10]{1, 2,3,4,5,6,7,8,9,10};
//int temp = 0;
//for (int i = 0; i < 5; i++)
//{
//    temp = nums[i];
//    nums[i] = nums[9 - i];
//    nums[9 - i] = temp;
//}
//for (int i = 0;i < 10; i++)
//{
//    Console.Write(nums[i] + " ");
//}
#endregion

#region Q9 reversing in a while loop
//int[] nums = new int[5];
//for (int i = 0; i < 5; i++)
//{
//    Console.Write("enter integer number " + (i + 1));
//    nums[i] = int.Parse(Console.ReadLine());
//}
//int j = 4;
//while (j >= 0)
//{
//    Console.Write(nums[j] + " ");
//    j--;
//}

#endregion

#region Q10 nums from 1 to 100 skipping multipls of 3

//for (int i = 1; i < 100; i++)
//{
//    if ( i % 3 != 0)
//    {
//        Console.WriteLine(i + " ");
//    }
//}
#endregion

#region Q11 prime or not
//bool isPrime(int n)
//{
//if (n == 2)
//{
//    return false;
//}
//    for (int i = 2; i <= n / 2; i++)
//    {
//        if (n % i == 0)
//        {
//            return false;
//        }
//    }
//    return true;
//}
//Console.Write("enter a number : ");
//if(isPrime(int.Parse((Console.ReadLine()))))
//{
//    Console.WriteLine("Prime");
//}
//else
//{
//    Console.WriteLine("Not Prime");
//}
#endregion

#region Q12 first 20 prime numbers
//bool isPrime(int n)
//{
//    if (n == 2)
//    {
//    return false;
//    }
//    for (int i = 2; i <= n / 2; i++)
//    {
//        if (n % i == 0)
//        {
//            return false;
//        }
//    }
//    return true;
//}
//int count = 0;
//int i = 1;
//while(count < 20)
//{
//    if (isPrime(i))
//    {
//        Console.Write(i + " ");
//        count++;
//    }
//    i++;
//}
#endregion

#region Q13  number of even/odd/positive/negative numbers
//int[] arr = new int[10] { -1, -2, 3, -4, -5, -6, 7, 8, -9, 10 };
//int even = 0, odd = 0, negative = 0, positive = 0;
//for (int i = 0; i < arr.Length; i++)
//{
//    if (arr[i] > 0)
//    {
//        positive++;
//    }
//    else if (arr[i] < 0)
//    {
//        negative++;
//    }
//    if (arr[i] % 2 == 0)
//    {
//        even++;
//    }
//    else
//    {
//        odd++;
//    }
//}
//Console.WriteLine("number of odd numbers : " + odd);
//Console.WriteLine("number of even numbers : " + even);
//Console.WriteLine("number of positive numbers : " + positive);
//Console.WriteLine("number of negative numbers : " + negative);


#endregion

#region Q14 Fibonacci
//int Fib(int n)
//{
//    if (n == 0 || n == 1)
//    {
//        return n;
//    }
//    return Fib(n - 1) + Fib(n - 2);
//}
//Console.Write("enter yout term : ");
//int n = int.Parse(Console.ReadLine());
//for (int i = 0; i <= n;i++)
//{
//    Console.WriteLine("Fib(" + i + ") = " + Fib(i));

//}
#endregion

#region Q15 Palindrome or not
//bool isPalindrome(int[] arr)
//{
//    for ( int i = 0; i < arr.Length / 2; i++ )
//    {
//        if( arr[i] != arr[arr.Length - 1 - i] )
//        {
//            return false;
//        }
//    }
//    return true;
//}

//int[] arr1 = new int[10] { 1, 2, 3, 4, 5, 5, 4, 3, 2, 1 };
//int[] arr2 = new int[10] { 1, 2, 3, 4, 5, 50, 40, 30, 20, 10 };
//Console.Write("arr1 : ");
//if (isPalindrome(arr1))
//{
//    Console.WriteLine("Palindrome");
//}
//else
//{
//    Console.WriteLine("Not Palindrome");
//}
//Console.Write("arr2 : ");
//if (isPalindrome(arr2))
//{
//    Console.WriteLine("Palindrome");
//}
//else
//{
//    Console.WriteLine("Not Palindrome");
//}

#endregion