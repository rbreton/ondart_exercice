import 'package:ex08/fcns.dart';
void main(){
  List lstNouns = ['Jerry','Chef','Kangaroo','Partner','Wool','Silver','Pig','Soldier','Magician','Garage'];
  List lstVerbs = ['blind','develop','ask','force','peel','analyse','applaud','report','paint','join'];
  List lstAdjectives = ['Noisy','Careful','Secret','Afraid','Embarrassed','Intelligent','Ignorant','Tested','Spotted','Simple'];
  List lstAdverbs = ['hilarious','fantastic','abusive','cool','special','imaginary','functional','valuable','plant','talented'];
  
  List lstAssociations = [
    {"name": "IS", "description": "Information Systems"},
    {"name": "CS", "description": "Computer Science"}
  ];
  List lstMembers = [
    {"associationName": "IS", "firstName": "Dzenan", "lastName": "Ridjanovic", "email": "dr@gmail.com"},
    {"associationName": "CS", "firstName": "David", "lastName": "Curtis", "email": "dc@gmail.com"},
    {"associationName": "IS", "firstName": "Robert", "lastName": "Nelson", "email": "rn@gmail.com"}
  ];
  
  List lstMatrix = [
    [1, 0, 0, 1],
    [0, 1, 1, 0],
    [0, 0, 1, 0],
    [1, 0, 1, 0],
    [1, 0, 1, 0],
    [1, 0, 0, 1]
  ];
  List lstMatrix2 =[
    [0, 0, 1, 0, 0, 1, 0, 0],
    [1, 0, 0, 0, 0, 0, 0, 1],
    [0, 0, 1, 0, 0, 1, 0, 1],
    [0, 1, 0, 0, 0, 1, 0, 0],
    [1, 0, 0, 0, 0, 0, 0, 0],
    [0, 0, 1, 1, 0, 1, 1, 0],
    [1, 0, 1, 1, 0, 1, 1, 0],
    [0, 0, 0, 0, 0, 0, 0, 0]
  ];
  print('----- Exercice 8.1 -----\n');
  print(getSentence(3, lstNouns, lstVerbs, lstAdjectives, lstAdverbs));
  print('----- Exercice 8.2 -----\n');
  print(sortMembersByLastName(lstMembers, 'IS'));
  print(sortMembersByFirstName(lstMembers, 'IS'));
  print(getMembersLastNameStartBy(lstMembers, 'IS', 'N'));
  print('----- Exercice 8.3 -----\n');
  
  print('----- Exercice 8.4 -----\n'); 
  print('Number of islands:' + numIslandsInMatrix(lstMatrix));
  lstMatrix.forEach(print);
  print('');
  print('Number of islands:' + numIslandsInMatrix(lstMatrix2));
  lstMatrix2.forEach(print);
  print('----- Exercice 8.5 -----\n');
}