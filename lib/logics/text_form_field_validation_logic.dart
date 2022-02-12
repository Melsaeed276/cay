// Here you can add your logic of accepting the input text in the validator of the TextFormField
String? emailChecker(String? value) {
  if (value != null) {
    if (value.trim().isEmpty) {
      return 'Please enter your Email';
    } else if (!value.contains('@')) {
      return 'Please enter your Email';
    } else {
      return null;
    }
  } else {
    return 'Please enter your Email';
  }
}

/*
------- password checking logics --------
[alphanumeric] all the English letters and the numbers
final  validCharacters = RegExp(r'^[a-zA-Z0-9]+$');

//[alphanumeric] all the English letters
final  validCharacters = RegExp(r'^[a-zA-Z]+$');

[capital English letters]
RegExp(r"(?=.*[a-z])(?=.*[A-Z])\w+");

[only special character]
 RegExp(r"[_/-/.!@#$\\//]");

[Numbers]
RegExp(r"[0-9]");
*/
String? passwordChecker(String? value) {
  final validLetters = RegExp(r"(?=.*[a-z])(?=.*[A-Z])\w+");
  final validNumbers = RegExp(r"[0-9]");

  if (value != null) {
    if (value.trim().isEmpty) {
      // if it is empty
      return 'Please Enter your Password';
    } else if (value.length < 8) {
      //if it is less than 8 character
      return 'Your password should be bigger than 8 character';
    } else if (!validLetters.hasMatch(value.trim())) {
      // if the password has not any capital character
      return 'Your password should include capital and small character';
    } else if (!validNumbers.hasMatch(value.trim())) {
      // if the password has not any number
      return 'Your password should include number';
    } else {
      // if it passed all the validation
      return null;
    }
  } else {
    //if it is not equal to null
    return 'Please enter your Password';
  }
}
