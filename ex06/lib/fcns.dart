library fcns;
String txtFormat(String strCharToFormat){
  Map mapUnwantedCharacter = {'Š' : 'S', 'š' : 's', 'Ž' : 'Z', 'ž' : 'z', 'À' : 'A', 'Á' : 'A', 'Â' : 'A', 'Ã' : 'A', 'Ä' : 'A', 'Å' : 'A', 'Æ' : 'A', 'Ç' : 'C', 'È' : 'E', 'É' : 'E', 'Ê' : 'E', 'Ë' : 'E', 'Ì' : 'I', 'Í' : 'I', 'Î' : 'I', 'Ï' : 'I', 'Ñ' : 'N', 'Ò' : 'O', 'Ó' : 'O', 'Ô' : 'O', 'Õ' : 'O', 'Ö' : 'O', 'Ø' : 'O', 'Ù' : 'U', 'Ú' : 'U', 'Û' : 'U', 'Ü' : 'U', 'Ý' : 'Y', 'Þ' : 'B', 'ß' : 'Ss', 'à' : 'a', 'á' : 'a', 'â' : 'a', 'ã' : 'a', 'ä' : 'a', 'å' : 'a', 'æ' : 'a', 'ç' : 'c', 'è' : 'e', 'é' : 'e', 'ê' : 'e', 'ë' : 'e', 'ì' : 'i', 'í' : 'i', 'î' : 'i', 'ï' : 'i', 'ð' : 'o', 'ñ' : 'n', 'ò' : 'o', 'ó' : 'o', 'ô' : 'o', 'õ' : 'o', 'ö' : 'o', 'ø' : 'o', 'ù' : 'u', 'ú' : 'u', 'û' : 'u', 'ý' : 'y', 'þ' : 'b', 'ÿ' : 'y'};
  String strCharFormated = strCharToFormat;
  if (mapUnwantedCharacter[strCharToFormat] != null) {
    strCharFormated = mapUnwantedCharacter[strCharToFormat];
  }
  return strCharFormated;
}
String palindrome(String strTxt){
  String strReturn = '';
  String strTxtNoSpace = strTxt.replaceAll(new RegExp(r'[\.,-\/#!$%\^&\*;:{}=\-_`~() ]'), '');
  List lstTxtToCharacter = strTxtNoSpace.split('');
  lstTxtToCharacter.forEach(txtFormat);
  print(lstTxtToCharacter);
  return strReturn + '\n';
}
String numDaysBetween(DateTime dtFirstDate, DateTime dtSecondDate){
  String strReturn = '';
  /*Duration drtPassedTime = dtSecondDate.difference(dtFirstDate);
  
  int intDaysPassed = drtPassedTime.inDays;
  strReturn = 'Il y a $intDaysPassed';*/
  return strReturn + '\n';
}
String convertNumGradesToLetters(){
  String strReturn = '';

  return strReturn + '\n';
}
String getNamelength(){
  String strReturn = '';

  return strReturn + '\n';
}
String getClubPlayers(){
  String strReturn = '';

  return strReturn + '\n';
}