import 'package:flutter_test/flutter_test.dart';
import 'package:examenb2/main.dart';

void main() {
  testWidgets('App renders login screen', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());
    expect(find.text('Control Electoral'), findsOneWidget);
  });
}
