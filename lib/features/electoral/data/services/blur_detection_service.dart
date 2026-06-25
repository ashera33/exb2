import 'dart:math';

class BlurDetectionService {
  static double calculateBlur(List<double> pixels) {
    double mean = pixels.reduce((a, b) => a + b) / pixels.length;

    double variance = pixels
        .map((p) => pow(p - mean, 2))
        .reduce((a, b) => a + b)
        .toDouble();

    return variance / pixels.length;
  }

  static bool isBlurry(double value) {
    return value < 120;
  }
}