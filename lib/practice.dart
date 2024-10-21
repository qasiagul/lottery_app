import 'dart:io';

void main(){
  print('Welcome to dart');

  stdout.write('Enter your value');
  var value = stdin.readLineSync();
  print('welcome, $value');
}