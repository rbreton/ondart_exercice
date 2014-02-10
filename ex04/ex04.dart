import 'dart:math' as M;

void main(){
  print(fibonacci(11));
  //print(endPointLine(980, 660, 120, 33));
  print(passedTimeBetween(new DateTime(1991, 09, 22, 0, 0)));
  print(investment(10, 1000.00, 3.3));
  print(timesTable(12, 20));
}
// Source : Dzenan R.
// Site : https://docs.google.com/presentation/d/1dnz-3b4-KsdgTnLDzI381SILc26fCgyuuYLbe96gBC0/edit?pli=1#slide=id.gd932d385_010
String fibonacci(int intNI){
  String strPrint = '#1 La suite de fibonacci :\n 0, ';
  int intA = 0;
  int intB = 1;
  int intCalResult;
  String strSpacer = ', ';
  for(int intCpt = 1; intCpt < intNI; intCpt ++){
    intCalResult = intA + intB;
    strSpacer = (intNI-1) == intCpt ? '' : ', ';
    strPrint = strPrint + intCalResult.toString() + strSpacer;
    intB = intA;
    intA = intCalResult;
  }
  return strPrint + '\n';
}

String endPointLine(int intW, int intH){
  String strPrint = '#2  :\n ';
  
  return strPrint + '\n';
}

//Source : Dart API Reference
//Site : https://api.dartlang.org/apidocs/channels/stable/#dart:core.DateTime
//Site : https://api.dartlang.org/apidocs/channels/stable/#dart:core.Duration
String passedTimeBetween(DateTime dtBirthday){
  DateTime dtNow = new DateTime.now();
  String strPrint = "#3 Temps passé entre le $dtBirthday et aujourd'hui le $dtNow :\n ";
  
  
  Duration drtPassedTime = dtNow.difference(dtBirthday);
  strPrint += drtPassedTime.inDays.toString() + ' jours';
  return strPrint + '\n';
}

String investment(int intYears, double dblInvestment, double dblInterest){
  String strPrint = '#4 :\n';
  double dblInterestF = dblInvestment;
  for(int intI = 1; intI <= intYears; intI++){
    dblInterestF += (dblInterestF*dblInterest)/100;
  }
  strPrint = strPrint + ' Investissement Total :' + dblInterestF.toStringAsFixed(2) + '\n';
  strPrint = strPrint + ' Investissement Remporté :' + (dblInterestF - dblInvestment).toStringAsFixed(2);
  return strPrint + '\n';
}

String timesTable(int intTimeTable, int intNI){
  String strPrint = '#5 Les $intNI premiers chiffres de la table de multiplication $intTimeTable :\n';
  int intCpt = 1;
  while (intCpt <= intNI){
    int intMult = intCpt * intTimeTable;
    strPrint += ' $intCpt X $intTimeTable = $intMult\n';
    intCpt++;
  }
  return strPrint + '\n';
}