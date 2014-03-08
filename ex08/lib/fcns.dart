library fcns;
import 'dart:math';
String getSentence(int intSentences, List lstNouns, List lstVerbs, List lstAdjectives, List lstAdverbs){
  String strReturn = '';
  List lstSentences = new List();
  Random rdmNum = new Random();
  for(int intI = 0; intI < intSentences; intI++){
    String strSentence = '';
    strSentence += lstAdjectives[rdmNum.nextInt(lstAdjectives.length)];
    strSentence += ' ' + lstNouns[rdmNum.nextInt(lstNouns.length)];
    strSentence += ' ' + lstVerbs[rdmNum.nextInt(lstVerbs.length)];
    strSentence += ' ' + lstAdverbs[rdmNum.nextInt(lstAdverbs.length)];
    strSentence += ' ' + lstNouns[rdmNum.nextInt(lstNouns.length)];
    strSentence += '.';
    lstSentences.add(strSentence);
  }
  for(int intJ = 0; intJ < lstSentences.length; intJ++){
    strReturn += lstSentences[intJ].toString();
    strReturn += '\n';
  }
  return strReturn + '\n';
}
String sortMembersByLastName(List lstMembers, String strAssociation){
  String strReturn = '';
  strReturn += 'Short by last name :\n';
  lstMembers.sort((a, b) => a['lastName'].compareTo(b['lastName']));
  for(int intI = 0; intI < lstMembers.length; intI++){
    strReturn += lstMembers[intI]['lastName'].toString();
    strReturn += ', ' + lstMembers[intI]['firstName'].toString();
    strReturn += '\n';
  }
  return strReturn + '\n';
}
String sortMembersByFirstName(List lstMembers, String strAssociation){
  String strReturn = '';
  strReturn += 'Short by first name :\n';
  lstMembers.sort((a, b) => a['firstName'].compareTo(b['firstName']));
  for(int intI = 0; intI < lstMembers.length; intI++){
    strReturn += lstMembers[intI]['firstName'].toString();
    strReturn += ' ' + lstMembers[intI]['lastName'].toString();
    strReturn += '\n';
  }
  return strReturn + '\n';
}
String getMembersLastNameStartBy(List lstMembers, String strAssociation, String strStartBy){
  String strReturn = '';
  strReturn += 'Last name start by $strStartBy :\n';
  for(int intI = 0; intI < lstMembers.length; intI++){
    if(lstMembers[intI]['lastName'][0] == strStartBy){
      strReturn += lstMembers[intI]['firstName'].toString();
      strReturn += ' ' + lstMembers[intI]['lastName'].toString();
      strReturn += '\n';
    }
  }
  return strReturn + '\n';
}
// Source : Dzenan R.
// Site : https://github.com/dzenanr/islands_of_1/blob/master/matrix.dart
// Site : http://www.geeksforgeeks.org/find-number-of-islands/
// Note : Pas évident à comprendre, mais j'ai tout de même réussi avec beaucoup d'aide de : https://github.com/dzenanr/islands_of_1/blob/master/matrix.dart
List prepareVisitedMatrix(int intHeight, int intWidth) {
  var visitedMatrix = new List(intHeight);
  for (var i = 0; i < intHeight; i++) {
    visitedMatrix[i] = new List(intWidth);
  }
  for (int row = 0; row < intHeight; row++) {
    for (int col = 0; col < intWidth; col++) {
      visitedMatrix[row][col] = false;
    }
  }
  return visitedMatrix;
}
bool safe(List matrix, int row, int col, int intHeight, int intWidth, List visitedMatrix) {
  bool rowIsValid = row >= 0 && row < intHeight;
  bool columnIsValid = col >= 0 && col < intWidth;
  if (rowIsValid && columnIsValid) {
    bool valueIsOne = matrix[row][col] == 1;
    bool valueNotVisited = !visitedMatrix[row][col];
    if (valueIsOne && valueNotVisited) {
      return true;
    }
  }
  return false;
}
void dfs(List matrix, int row, int col, int intHeight, int intWidth, List visitedMatrix) {
  List nrowPositions = [-1, -1, -1, 0, 0, 1, 1, 1];
  List ncolPositions = [-1, 0, 1, -1, 1, -1, 0, 1];
  visitedMatrix[row][col] = true;
  for (int n = 0; n < 8; ++n) {
    var nrow = row + nrowPositions[n];
    var ncol = col + ncolPositions[n];
    if (safe(matrix, nrow, ncol, intHeight, intWidth, visitedMatrix)) {
      dfs(matrix, nrow, ncol, intHeight, intWidth, visitedMatrix);
    }
  }
}
String numIslandsInMatrix(List lstMatrix){
  String strReturn = '';
  int intHeight = lstMatrix.length;
  int intWidth = lstMatrix[0].length;
  int islandCount = 0;
  List visitedMatrix = prepareVisitedMatrix(intHeight, intWidth);  
  for (int row = 0; row < intHeight; ++row){
    for (int col = 0; col < intWidth; ++col){
      if (lstMatrix[row][col] == 1 && !visitedMatrix[row][col]) {
        dfs(lstMatrix, row, col, intHeight, intWidth, visitedMatrix);
        ++islandCount;
      }
    }
  }
  strReturn += islandCount.toString();
  return strReturn;
}
/* ------------------------------------------------------- */