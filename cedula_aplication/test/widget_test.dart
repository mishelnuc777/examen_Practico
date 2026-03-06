import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:cedula_aplication/main.dart';

void main() {
  testWidgets('App loads test', (WidgetTester tester) async {

    await tester.pumpWidget(ValidaCedulaApp());

    expect(find.byType(MaterialApp), findsOneWidget);

  });
}