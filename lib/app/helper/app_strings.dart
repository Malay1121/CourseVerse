import 'all_imports.dart';

class AppStrings {
  static String appName = "CourseVerse";

  static String commonValidation = "Please fill all the details";
  static String emailValidation = "Please enter a valid email";
  static String nameValidation = "Please enter a valid name";

  static String phoneValidation = "Please enter a valid phone number";
  static String lastNameValidation = "Please enter a valid first name";
  static String firstNameValidation = "Please enter a valid last name";
  static String profilePictureValidation =
      "Please select a valid profile picture";
  static String passwordValidation = "Please enter a valid password";
  static String passwordErrorMessage =
      "Minimum 8 characters, at least 1 lower case, at least 1 upper case, at least 1 digit";

  static String next = "Next";
  static String previous = "Previous";
  static String skip = "Skip";

  static String createYourAccount = 'Create your \nAccount';
  static String weAreHereToHelpYou = 'We are here to help you!';
  static String yourName = 'Full Name';
  static String yourEmail = 'Email';
  static String password = 'Password';
  static String or = 'or';
  static String doYouHaveAnAccount = 'Do you have an account ?';
  static String signIn = 'Sign In';
  static String loginToYourAccount = 'Login to your \nAccount';
  static String dontHaveAnAccountYet = 'Don’t have an account yet?';
  static String signUp = 'Sign up';
  static String hopeYoureDoingFine = 'Hope you’re doing fine.';

  static String search = "Search";
  static String courseTitle = "Course Title";
  static String courseDescription = "Course Description";
  static String courseLength = "Course Length";
  static String noOfChapters = "No. Of Chapters";
  static String difficulty = "Difficulty";
  static String createCourse = "Create Course";

  static String courseGenerationPrompt =
      """User will provide a few parameters using which you have to create in depth course. The user will provide course title, course detailed description, number of chapters(they can also give detailed description for each of the chapters), level(beginner, intermidiate, advanced), length of course(In hours), and more. The input will be provided in a json format, and you have to provide the output in json format itself. Give the course as if you are an expert at that field and please give expert tips. At the same time, amke sure you are not giving a lot of out of track information in the course.  Keep the course veryyyyyyyyy detailed depending on the level, make a big course. Don't create 1-2 liner chapters. Create 1-10 paragraphs in each chapter.

You have to return the course title, description, level, chapters, length, chapters(return chapter number, title of chapter, content, and time in each chapter), and category of the course.

You have to return the whole input too, you can overwrite parameters if there are changes, but return all the data back.

Example input: {"title": "Optimiziation using Calculus", "description": "A detailed course on teaching optimization in calculus using integration. Sticks a bit to IB Math AAHL content when making this course.", "level":"advance", "chapters": 3,}

Example output: {"title": "Optimiziation using Calculus", "length": "2 hours", "description": "A detailed course on teaching optimization in calculus using integration. Sticks a bit to IB Math AAHL content when making this course.", "level":"advance", "chapters": 3, "chapters": [{"chapter": 1, "title": "Introduction to Optimization", "content":"course content", "time": "10 minutes",}...] }""";
}
