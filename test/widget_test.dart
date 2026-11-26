import 'package:book_your_doc/UI/utility/Constants.dart';
import 'package:book_your_doc/main.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('BookYourDocApp renders login screen and navigates to patient home',
      (WidgetTester tester) async {
    await tester.pumpWidget(const BookYourDocApp());

    expect(find.text(Constants.appName), findsOneWidget);
    expect(find.text('Accedi'), findsOneWidget);
    expect(find.text('Paziente'), findsOneWidget);
    expect(find.text('Medico'), findsOneWidget);

    await tester.tap(find.text('Paziente'));
    await tester.pumpAndSettle();

    expect(find.text('Dott. Marco Rossi'), findsOneWidget);
  });
}
