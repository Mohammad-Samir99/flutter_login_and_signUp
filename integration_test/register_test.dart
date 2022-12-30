import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:uidisign05/constants_keys/const_keys.dart';
import 'package:integration_test/integration_test.dart' ;
import 'package:uidisign05/main.dart' as app;

 void main() { 
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();
  group("group_auth", () {
    testWidgets("registerScreen", (tester) async {
     app.main();
    await tester.pumpAndSettle();
    await  tester.enterText(find.byKey(ConstKey.Name), "Mohammad");
    await tester.pumpAndSettle();
    await tester.enterText(find.byKey(ConstKey.Email), "Mohammad@example.com");
    await tester.pumpAndSettle();
    await tester.enterText(find.byKey(ConstKey.Phone), "0567261495");
    await tester.pumpAndSettle();
    await tester.enterText(find.byKey(ConstKey.Password), "Mohammad@123");
    await tester.pumpAndSettle(const Duration(seconds: 3));
    await tester.testTextInput.receiveAction(TextInputAction.done);


      //await tester.pumpAndSettle();
   // await  tester.enterText(find.byKey(ConstKey.SignUp));
    // await tester.pumpAndSettle();
    });
  });
}