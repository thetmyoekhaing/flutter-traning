# Flutter Training

### Day1

<details>

# Data Types

- ## String

```dart
String str = "something";
print(str); //print "something"
```

- ## Int

```dart
int number = 19;
print(number); //print 19
```

- ## some string methods

  1. ### Changing the data types (String => int)

  ```dart
  String str = "20";

  int num1 = 20;
  int num2 = int.parse(str);
  print(num1 + num2); //print 40

  ```

  > In this example code , string "20" is passed in a method called int.parse() and now it returns a int value so assign it into a variable.

  2. ### To check whether the string is empty or not

  ```dart
  String.isEmpty;

  ```

  3. ### To check the length of the string

  ```dart
  String.length;
  ```

- ## Double (float)

```dart
double float = 19.2;
print(float); //print 19.2
```

- ## Bool

```dart
bool isTrueFalse = true;
print(isTrueFalse); //print true
```

- ## Collection

  - ### List

  ```dart
  List vowels = ["a","e","i","o","u"];
  print(vowels); //print [a,e,i,o,u]
  ```

  > We can output one item by writing this

  ```dart
  List vowels = ["a","e","i","o","u"];
  print(vowels[0]); //print a
  ```

  > First item of map starts with 0 , that's why I wrote "vowels[0]" like this

  <br>

  > For better performance you can write like this.

  ```dart
  List<String> vowels = ["a","e","i","o","u"];
  List<int> oneToNine = [1,2,3,4,5,6,7,8,9];
  ```

  > \<DataType> is called generic. If you didnt define anything it will be like this when you hover over your List or something "List\<dynamic>". </br> Dynamic literally means it can be any data types. </br> So if you didnt define it , it will somehow affect the performance of your code and it will not show any of the built in method and function as snippet recommendation because the data type is dynamic.

  - ### Map

  ```dart
  Map personalInfo = {
    "name" : "tomari",
    "age" : "19",
    "country" : "Myanmar"
  };

  print(personalInfo); //print {name: tomari, age: 19, country: Myanmar}
  print(personInfo["name"]); //print tomari
  ```

  > Map are key , value pairs so in my example , name , age and country are key and tomari is the value of name key , etc.

  > As the above you can define generic for the better performance. </br> Since maps are key value pairs generic have to defined two place. One for key and one for value.

  ```dart
  Map<String,String> personalInfo = {
    "name" : "tomari",
    "age" : "19",
    "country" : "Myanmar"
  };
  ```

  > Notice I defined Map\<String, String>. age should be number which is an interger but we cant write "age" : 19 because we defined Map\<String ,String>. </br> We dont wanna define Map\<String,dynamic> for our performance. So what do we do? </br> Remember I have shown you a method of string which can invert a string to an int.

  ```dart
  Map<String, String> personalInfo = {
    "name": "tomari",
    "age": "19",
    "country": "Myanmar"
  };

  String str = "something";
  int personAge = int.parse(personalInfo["age"]!);
  print(personAge.runtimeType); //print int

  ```

  > "!" is saying that the age key in the personInfo is not null. There will be something about null in day 2 so just keep that null means which has no value. <br>
  > runtimeType attribute is used to check the data type of something so if we run this

</details>

<br>

### Day 2

<details>

- loops

  - for loop

  ```dart
   List<String> listNames = ["Thet", "Myoe"];

   for (var i = 0; i < listNames.length; i++) {
    print(listNames[i]); //print thet and myoe line by line
    print(i); //print 0 , 1 because first item of list starts with 0;
  }
  ```

  > alternatively you can write with for in for same purpose as the above code but for in provides shorter code

  - for in (loop through each item in the map)

  ```dart
  List<String> listNames = ["Thet", "Myoe"];
  for(name in listNames){
    print(name); //print thet and myoe
  }
  ```

  - while

  ```dart
  var i = 0;
  while (i < 5) {
    print('Hello World');
    i++;
  }
  ```

<br>

- null safety

  > What is null? Let's see

  ```dart

  String word;
  print(word); // illegal

  word = 'Hello, ';
  print(word); // legal
  ```

  > If you only assigned a variable without a value , the default will be null and can't print it.

  - nullable type (?)

    > There are situations when you don't want to use a variable or an argument in a function , you can use nullable operator which is a question mark ( ? ).See example.

    ```dart

    String? word;

    print(word); // prints null
    ```

  - null-aware operator (??)

    ```dart
    String? str;
    print(str ?? "something"); //print "something"

    String? str2 = "Hello world";
    print(str2 ?? "something"); //print "Hello world"
    ```

  > null-aware operator is used to provide a value if the there is no value.

- functions

  - functions with postional arguments

  ```dart
  void eat(String action, String what) {
    print("I'm $action $what");
  }
  //function call
  eat("eating" , "banana"); //print I'm eating banana
  eat("banana" , "eating"); //print I'm banana eating


  ```

  > When you want to use your arguments in an output or something you can use "$argument name", you can see in the above code

  > if the arguments came "what" first and "action" later when you call the function , the output will be I'm what eating , as the above code => I'm banana eating

  <br>

  - functions with name arguments

  > ### The code below will not work <br> I just showed this for how a name argument function works , to run the function scroll and see it in next. <br>

  ```dart
  void eat({ String what , String action}){
    print("I'm eating $action $what");
  }

  eat(what : "banana" , action : "eating" );
  ```

  > There are situations when we want to use an argument as optional <br> as the above example , we can say "I'm eating" without "what argument" . <br> In situation like this we can use nullable operator to ignore that argument , see example

  <br> <br>

  > ## required

  ```dart
  void eat({required String action, String? what}) {
  print("I'm $action $what");
  }

  eat(action: "eating"); //print I'm eating null
  ```

  > Look carefully there is a nullable operator in eat function's argument which is "String? what" to ignore the argument but there is a problem , we are outputting "I'm eating null" <br> So how do we remove that null.

  ```dart
  void eat({required String action, String? what}) {
    print("I'm $action ${what ?? ""}");
  }

  eat(action: "eating"); // print "I'm eating"
  ```

</details>
