import 'package:flutter/material.dart';
import '../provider/navigationProvider.dart';
import 'package:provider/provider.dart';
import 'package:ff_navigation_bar/ff_navigation_bar.dart';

/// Navigation entry point for app.
class Root extends StatelessWidget {
  static const route = '/';

  @override
  Widget build(BuildContext context) {
    return Consumer<NavigationProvider>(
      builder: (context, provider, child) {
        // Create bottom navigation bar items from screens.
        final items = provider.screens
            .map(
              (screen) => FFNavigationBarItem(
                iconData: screen.icon,
                label: screen.title,
              ),
            )
            .toList();

        final screens = provider.screens
            .map(
              (screen) => Navigator(
                key: screen.navigatorState,
                onGenerateRoute: screen.onGenerateRoute,
              ),
            )
            .toList();

        return WillPopScope(
          onWillPop: () async => provider.onWillPop(context),
          child: Scaffold(
            body: IndexedStack(
              children: screens,
              index: provider.currentTabIndex,
            ),
            bottomNavigationBar: FFNavigationBar(
              theme: FFNavigationBarTheme(
                barBackgroundColor: Colors.white,
                selectedItemBorderColor: Colors.white,
                selectedItemBackgroundColor: Colors.green,
                selectedItemIconColor: Colors.white,
                selectedItemLabelColor: Colors.grey,
              ),
              selectedIndex: provider.currentTabIndex,
              onSelectTab: provider.setTab,
              items: items,
            ),
          ),
        );
      },
    );
  }
}
