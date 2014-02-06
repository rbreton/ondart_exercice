void main(){
  print(fibonacci(11));
  print(endPointLine(980, 660));
  print(passedTimeBetween(new DateTime(1991, 09, 22, 24, 0)));
  print(investment(10, 1000, 3.3));
  print(timesTable(12, 20));
}
String fibonacci(int intNI){
  String strPrint = '#1 La suite de fibonacci :\n 0, ';
  int intCpt = 1;
  int intA = 0;
  int intB = 1;
  int intCalResult;
  String strSpacer = ', ';
  while (intCpt < intNI){
    intCalResult = intA + intB;
    strSpacer = (intNI-1) == intCpt ? '' : ', ';
    strPrint = strPrint + intCalResult.toString() + strSpacer;
    intB = intA;
    intA = intCalResult;
    intCpt++;
  }
  return strPrint;
}

String endPointLine(int intW, int intH){
  String strPrint = '#2  :\n';
  return strPrint;
}

String passedTimeBetween(DateTime DTBirthday){
  String strPrint = '#3 Temps :\n';
  return strPrint;
}

String investment(int intYears, int intInvestment, double dblInterest){
  String strPrint = '#4 :\n';
  return strPrint;
}

String timesTable(int intTimeTable, int intNI){
  String strPrint = '#5 Les $intNI premiers chiffres de la table de multiplication $intTimeTable :\n';
  int intCpt = 1;
  while (intCpt <= intNI){
    int intMult = intCpt * intTimeTable;
    strPrint += ' $intCpt X $intTimeTable = $intMult\n';
    intCpt++;
  }
  return strPrint;
}