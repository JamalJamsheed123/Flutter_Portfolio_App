// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:portfolio_website/Utils/typography.dart';
import 'package:portfolio_website/View/components/contact_form.dart';
import 'package:portfolio_website/main.dart';
import 'package:portfolio_website/models/project_model.dart';

void main() {
  test('typography scales between mobile and web widths', () {
    final mobileText = PortfolioTypography.forWidth(390);
    final webText = PortfolioTypography.forWidth(1440);

    expect(
      mobileText.headlineMedium!.fontSize,
      lessThan(webText.headlineMedium!.fontSize!),
    );
    expect(
      mobileText.bodyLarge!.fontSize,
      lessThan(webText.bodyLarge!.fontSize!),
    );
    expect(mobileText.bodyLarge!.height, webText.bodyLarge!.height);
  });

  test('every CV project opens its own Play Store package', () {
    const expectedPackages = {
      'com.bmcsolution.moltysalesforce',
      'com.bmcsolution.habibQatar',
      'com.application.bmc.rbechelon',
      'com.application.bmc.barretthodgsonsmr',
      'com.application.bmc.atcoexe',
      'com.application.bmc.atcoofflineplanner',
      'com.newsweb.mglink.mglinknewsweb',
      'com.application.bmc.iciagri',
      'com.application.bmc.ici_agriofflineplanner',
      'com.application.bmc.cibexexecution',
      'com.application.bmc.albertpharmacrm',
      'com.takverge.taskmanagement',
      'com.application.bmc.medicslabcrm',
      'com.igancomms.igan',
    };
    final actualPackages = projects
        .map((project) => Uri.parse(project.playStoreUrl).queryParameters['id'])
        .toSet();

    expect(actualPackages, expectedPackages);
    expect(projects, hasLength(expectedPackages.length));
  });

  testWidgets('portfolio shows CV contact details and project actions',
      (tester) async {
    await tester.pumpWidget(const MyApp());

    expect(tester.takeException(), isNull);
    expect(find.text('Muhammad Jamal Jamsheed'), findsWidgets);
    expect(
      find.text(ContactSection.emailAddress, findRichText: true),
      findsOneWidget,
    );
    expect(
      find.text(ContactSection.mobileNumber, findRichText: true),
      findsOneWidget,
    );
    expect(find.byType(TextField), findsNothing);
    expect(find.text('Selected Projects'), findsOneWidget);
    expect(find.text('Check In / Check Out'), findsNWidgets(projects.length));
    expect(find.text('YouTube'), findsNothing);
  });

  testWidgets('mobile drawer navigates to Projects', (tester) async {
    tester.view.physicalSize = const Size(390, 844);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.resetPhysicalSize);
    addTearDown(tester.view.resetDevicePixelRatio);

    await tester.pumpWidget(const MyApp());
    expect(tester.takeException(), isNull, reason: 'initial mobile layout');
    await tester.tap(find.byIcon(Icons.menu));
    await tester.pumpAndSettle();
    expect(tester.takeException(), isNull, reason: 'mobile drawer layout');

    final projectsLink = find.widgetWithText(TextButton, 'Projects');
    expect(projectsLink, findsOneWidget);
    await tester.tap(projectsLink);
    await tester.pumpAndSettle();

    expect(tester.takeException(), isNull, reason: 'section navigation layout');
  });
}
