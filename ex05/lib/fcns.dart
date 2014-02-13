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
  
  return strReturn;
}
String longestWordIn(String strText){
  String strReturn = '';
  List lstSentence = strText.split(' ');
  
  return strReturn;
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