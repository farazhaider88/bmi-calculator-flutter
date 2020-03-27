import 'dart:math';

class CalculatorBrain {
  final int height;
  final int weight;
  double _bmi;

  CalculatorBrain({this.height, this.weight});

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return "OverWeight";
    } else if (_bmi > 18) {
      return "Normal";
    } else {
      return "UnderWeight";
    }
  }

  String getInterpretion() {
    if (_bmi >= 25) {
      return "You have a higher than normal body weight. try to exercise more";
    } else if (_bmi > 18) {
      return "You have normal weight, good job.";
    } else {
      return "you have a lower than normal body wight. you can eat a bit more.";
    }
  }
}
