import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({this.height, this.weight});

  final int height;
  final int weight;
  double _bmi;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    print(_bmi);
    if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Underwight';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'You may want to take in less calories, exercise more or see a doctor';
    } else if (_bmi > 18.5) {
      return 'You are normal for your height and weight';
    } else {
      return 'You need to add some more colories to your diet';
    }
  }
}
