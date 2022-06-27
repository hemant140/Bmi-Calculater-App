import 'dart:math';

class calculateBMI {
  final int height;
  final int weight;

  calculateBMI(
    this.height,
    this.weight,
  );

  late double _bmi;
  String calBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'OverWeight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'UnderWeight';
    }
  }

  String feedBack() {
    if (_bmi >= 25) {
      return "You have a Higher than Normal Body Mass Index.\nHealthy eating plan and regular physical activity.";
    } else if (_bmi > 18.5) {
      return 'You have a Normal Body Index. Congratulations!';
    } else {
      return "You Are Underweight.\nConsume nutrient-dense foods,\nsuch as lean protein,low-fat dairy products,\nnuts and seeds and fruits and vegetables";
    }
  }
}
