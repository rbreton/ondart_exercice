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
  print('Manque de temps');
  print("Je comprend le principe, mais je ne vois pas l'utilité. \nPour la gestion de donnée, il existe déjà les bases de données Mysql, Mysqli. \nMais, je comprend que c'est pour nous faire comprendre le principe des models, vues, controleurs (MVC).");
  print('');
  print('----- Exercice 8.4 -----\n'); 
  print('Number of islands:' + numIslandsInMatrix(lstMatrix));
  lstMatrix.forEach(print);
  print('');
  print('Number of islands:' + numIslandsInMatrix(lstMatrix2));
  lstMatrix2.forEach(print);
  print('----- Exercice 8.5 -----\n');
  print('Manque de temps');
  print('Pour réussir à résoudre un "sliding puzzles" on doit suivre des étapes bien présise. \nsource : http://entertainment.howstuffworks.com/puzzles/sliding-puzzles3.htm');
  print('1: Placer les numéros 1 et 2 en haut à gauche.');
  print('2: Placer le numéro 3 en haut à droite.');
  print('3: Placer le numéro 4 en dessou du numéro 3.');
  print('4: Glisser le numéro 3 à gauche et le numéro 4 en haut.');
  print('5: La première ligne est complété.');
  print('6: Répéter les étapes 1 à 4.');
  print('7: Le deuxième ligne est complété.');
  print('8: Placer le numéro 9 et le numéro 13 à leurs place finale.');
  print('9: Place le numéro 10 et le numéro 14 à leurs place finale.');
  print('10: Mettre les derniers chiffres à leurs place.');
}