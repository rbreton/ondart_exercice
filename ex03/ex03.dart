void main() {
  String strFizzBuzz = '';
  for(int cpt = 1; cpt<=100; cpt++){
    String strNumero = cpt.toString();
    if(cpt % 3 == 0){
      strNumero = 'Fizz';
    }
    if(cpt % 5 == 0){
      
      if(strNumero == 'Fizz'){
        strNumero = 'FizzBuzz';
      }else{
        strNumero = 'Buzz';
      }
    }
    if(cpt % 10 != 0){
      strFizzBuzz = strFizzBuzz + strNumero + ' - ';
    }else{
      print(strFizzBuzz + strNumero);
      strFizzBuzz = '';
    }
  }
}