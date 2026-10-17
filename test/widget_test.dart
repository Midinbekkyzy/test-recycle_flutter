import 'package:flutter_test/flutter_test.dart';
import 'package:testrecycle_flutter/car_detail_screen.dart';
import 'package:testrecycle_flutter/main.dart';

void main() {
  testWidgets('list shows cars and opens the detail screen', (tester) async {
    await tester.pumpWidget(const TestRecycleApp());

    expect(find.text('testRecycle'), findsOneWidget);
    expect(find.text('Mercedes'), findsOneWidget);
    expect(find.text('Toyota Camry'), findsOneWidget);
    expect(find.text('2023'), findsOneWidget);

    await tester.tap(find.text('Mercedes'));
    await tester.pumpAndSettle();

    expect(find.byType(CarDetailScreen), findsOneWidget);
    expect(find.text('Mercedes'), findsWidgets);
    expect(find.text('2023'), findsWidgets);

    await tester.pageBack();
    await tester.pumpAndSettle();

    expect(find.byType(CarDetailScreen), findsNothing);
    expect(find.text('Mustang'), findsOneWidget);
  });
}
