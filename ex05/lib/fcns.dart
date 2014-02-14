library fcns;

String onlyLetters(String strText){
  String strReturn;
  RegExp exp = new RegExp(r"^[a-zA-Z ]*$");
  strReturn = exp.hasMatch(strText).toString();
  return strReturn;
}
String longestSentenceIn(String strText){
  String strReturn = '';
  List lstSentence = strText.split('.');
  int intLongestPosition = 0;
  for(int n = 0; n <= lstSentence.length - 1; n++){
    if(lstSentence[n].length > lstSentence[intLongestPosition].length){
      intLongestPosition = n;
    }
  }
  strReturn = lstSentence[intLongestPosition].toString() + '.';
  return strReturn;
}
String longestWordIn(String strText){
  String strReturn = '';
  List lstWord = strText.split(' ');
  int intLongestPosition = 0;
  for(int n = 0; n <= lstWord.length - 1; n++){
    if(lstWord[n].length > lstWord[intLongestPosition].length){
      intLongestPosition = n;
    }
  }
  strReturn = lstWord[intLongestPosition].toString();
  return strReturn;
}
String timesTable(int intTimesTable){
  String strReturn = '';
  int intCpt = 1;
  while (intCpt <= 12){
    int intMult = intCpt * intTimesTable;
    strReturn += ' $intCpt X $intTimesTable = $intMult\n';
    intCpt++;
  }
  return strReturn + '\n';
}
String displayTree(int intHeight){
  String strReturn = '';
  int intCptSpacer = intHeight;
  for (int n = 1; n <= intHeight; n++){
    String strSpacer = '';
    for (int m = 1; m<= intCptSpacer; m++){
      strSpacer = strSpacer + ' ';
    }
    intCptSpacer--;
    strReturn += strSpacer;
    for (int o = 1; o <= n; o++){
      strReturn += '*';
    }
    strReturn += '\n';
  }
  return strReturn;
}