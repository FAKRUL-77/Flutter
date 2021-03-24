import 'package:E_Commerce/widgets/shop_screen/category/widgets/category_filter_screen.dart';
import 'package:flutter/material.dart';
import '../models/screen.dart';
import '../screens/root.dart';
import '../widgets/exit_dialog.dart';
import 'package:provider/provider.dart';
import '../screens/homeScreen.dart';
import '../screens/shopScreen.dart';
import '../widgets/shop_screen/category/category_screen.dart';
import '../screens/bagScreen.dart';
import '../screens/favoriteScreen.dart';
import '../screens/profileScreen.dart';

const FIRST_SCREEN = 0;
const SECOND_SCREEN = 1;
const THIRD_SCREEN = 2;
const FOURTH_SCREEN = 3;
const FIFTH_SCREEN = 4;

class NavigationProvider extends ChangeNotifier {
  /// Shortcut method for getting [NavigationProvider].
  static NavigationProvider of(BuildContext context) =>
      Provider.of<NavigationProvider>(context, listen: false);

  int _currentScreenIndex = FIRST_SCREEN;

  int get currentTabIndex => _currentScreenIndex;

  Route<dynamic> onGenerateRoute(RouteSettings settings) {
    print('Generating route: ${settings.name}');
    switch (settings.name) {
      case CategoryFilterScreen.routeName:
        return MaterialPageRoute(builder: (_) => CategoryFilterScreen());
      default:
        return MaterialPageRoute(builder: (_) => Root());
    }
  }

  final Map<int, Screen> _screens = {
    FIRST_SCREEN: Screen(
      title: 'Home',
      child: HomeScreen(),
      initialRoute: HomeScreen.routeName,
      icon: Icons.home,
      navigatorState: GlobalKey<NavigatorState>(),
      onGenerateRoute: (settings) {
        print('Generating route: ${settings.name}');
        switch (settings.name) {
          default:
            return MaterialPageRoute(builder: (_) => HomeScreen());
        }
      },
      scrollController: ScrollController(),
    ),
    SECOND_SCREEN: Screen(
      title: 'Shop',
      child: ShopScreen(),
      initialRoute: ShopScreen.routeName,
      icon: Icons.shop,
      navigatorState: GlobalKey<NavigatorState>(),
      onGenerateRoute: (settings) {
        print('Generating route: ${settings.name}');
        switch (settings.name) {
          case CategoryScreen.routeName:
            return MaterialPageRoute(builder: (_) => CategoryScreen());
          default:
            return MaterialPageRoute(builder: (_) => ShopScreen());
        }
      },
      scrollController: ScrollController(),
    ),
    THIRD_SCREEN: Screen(
      title: 'Favorite',
      child: FavoriteScreen(),
      initialRoute: FavoriteScreen.routeName,
      icon: Icons.favorite,
      navigatorState: GlobalKey<NavigatorState>(),
      onGenerateRoute: (settings) {
        print('Generating route: ${settings.name}');
        switch (settings.name) {
          default:
            return MaterialPageRoute(builder: (_) => FavoriteScreen());
        }
      },
      scrollController: ScrollController(),
    ),
    FOURTH_SCREEN: Screen(
      title: 'Bag',
      child: BagScreen(),
      initialRoute: BagScreen.routeName,
      icon: Icons.shopping_bag,
      navigatorState: GlobalKey<NavigatorState>(),
      onGenerateRoute: (settings) {
        print('Generating route: ${settings.name}');
        switch (settings.name) {
          default:
            return MaterialPageRoute(builder: (_) => BagScreen());
        }
      },
      scrollController: ScrollController(),
    ),
    FIFTH_SCREEN: Screen(
      title: 'Profile',
      child: ProfileScreen(),
      icon: Icons.person,
      initialRoute: ProfileScreen.routeName,
      navigatorState: GlobalKey<NavigatorState>(),
      onGenerateRoute: (settings) {
        print('Generating route: ${settings.name}');
        switch (settings.name) {
          default:
            return MaterialPageRoute(builder: (_) => ProfileScreen());
        }
      },
      scrollController: ScrollController(),
    ),
  };

  List<Screen> get screens => _screens.values.toList();

  Screen get currentScreen => _screens[_currentScreenIndex];

  /// Set currently visible tab.
  void setTab(int tab) {
    if (tab == currentTabIndex) {
      _scrollToStart();
    } else {
      _currentScreenIndex = tab;
      notifyListeners();
    }
  }

  /// If currently displayed screen has given [ScrollController] animate it
  /// to the start of scroll view.
  void _scrollToStart() {
    if (currentScreen.scrollController != null) {
      currentScreen.scrollController.animateTo(
        0,
        duration: const Duration(seconds: 1),
        curve: Curves.easeInOut,
      );
    }
  }

  /// Provide this to [WillPopScope] callback.
  Future<bool> onWillPop(BuildContext context) async {
    final currentNavigatorState = currentScreen.navigatorState.currentState;

    if (currentNavigatorState.canPop()) {
      currentNavigatorState.pop();
      return false;
    } else {
      if (currentTabIndex != FIRST_SCREEN) {
        setTab(FIRST_SCREEN);
        notifyListeners();
        return false;
      } else {
        return await showDialog(
          context: context,
          builder: (context) => ExitAlertDialog(),
        );
      }
    }
  }
}
