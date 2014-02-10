import 'dart:math';
void main() {
  qOne();
  qTwo();
  qThree();
  qFour();
}
void qOne(){
  int x = 5;
  int y = 7;
  int z = 8;
  // x - y / z
  var r = x - y / z;
  var rr = (x - y) / z;
  print("Q1 : r = x - y / z : $r $rr");
}
void qTwo(){
  var area = PI * pow(10,2);
  print("Q2 : $area");
}
void qThree(){
  var areaFeet = 220 * 260;
  var areaAcres = areaFeet * 0.000022959;
  print("Q2 : $areaFeet feet = $areaAcres acres");
}
void qFour(){
  var distance = 100;
  var temps = 9.58;
  var vitesseMS = distance / temps;
  var vitesseKMH = vitesseMS * 3.6;
  print("Q4 : vitesse en metre seconde = $vitesseMS vitesse en km/h = $vitesseKMH");
}