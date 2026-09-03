import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:paw_print/core/providers/navigation_provider.dart';
import 'package:paw_print/features/cart/cart_view.dart';
import 'package:paw_print/features/favourites/favourites_view.dart';
import 'package:paw_print/features/home/home_view.dart';
import 'package:paw_print/features/profile/profile_view.dart';
import 'package:paw_print/features/search/search_view.dart';
import 'package:paw_print/features/settings/settings_view.dart';
import 'package:provider/provider.dart';

class MainView extends StatefulWidget {
  const new({super.key});

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  List<Widget> screens = [
    HomeView(),
    SearchView(),
    const FavoritesView(),
    const CartView(),
    const ProfileView(),
  ];
  Widget activeScreen = HomeView();
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    final navigation = context.watch<NavigationProvider>();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: Text(
          'Verve',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Theme.of(context).colorScheme.onPrimary,
          ),
        ),

        actions: [
          IconButton(
            icon: SvgPicture.asset(
              'assets/icons/SearchMenu.svg',
              height: 24,
              colorFilter: ColorFilter.mode(
                Theme.of(context).colorScheme.onPrimary,
                BlendMode.srcIn,
              ),
            ),
            onPressed: () => context.read<NavigationProvider>().changeTab(1),
          ),
          IconButton(
            icon: Icon(
              Icons.settings,
              color: Theme.of(context).colorScheme.onPrimary,
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const SettingsView()),
              );
            },
          ),
        ],
      ),

      body: IndexedStack(index: navigation.currentIndex, children: screens),

      bottomNavigationBar: NavigationBar(
        selectedIndex: navigation.currentIndex,

        onDestinationSelected: (index) {
          context.read<NavigationProvider>().changeTab(index);
        },

        destinations: [
          NavigationDestination(
            icon: SvgPicture.asset('assets/icons/home.svg', height: 24),
            selectedIcon: SvgPicture.asset(
              'assets/icons/home.svg',
              colorFilter: ColorFilter.mode(
                Theme.of(context).colorScheme.primary,
                BlendMode.srcIn,
              ),
              height: 24,
            ),
            label: 'Home',
          ),
          NavigationDestination(
            icon: SvgPicture.asset('assets/icons/SearchMenu.svg', height: 24),
            selectedIcon: SvgPicture.asset(
              'assets/icons/SearchMenu.svg',
              colorFilter: ColorFilter.mode(
                Theme.of(context).colorScheme.primary,
                BlendMode.srcIn,
              ),
              height: 24,
            ),
            label: 'Search',
          ),
          NavigationDestination(
            icon: SvgPicture.asset('assets/icons/heart.svg', height: 24),
            selectedIcon: SvgPicture.asset(
              'assets/icons/heart.svg',
              colorFilter: ColorFilter.mode(
                Theme.of(context).colorScheme.primary,
                BlendMode.srcIn,
              ),
              height: 24,
            ),
            label: 'Favorites',
          ),
          NavigationDestination(
            icon: SvgPicture.asset('assets/icons/cart.svg', height: 24),
            selectedIcon: SvgPicture.asset(
              'assets/icons/cart.svg',
              colorFilter: ColorFilter.mode(
                Theme.of(context).colorScheme.primary,
                BlendMode.srcIn,
              ),
              height: 24,
            ),
            label: 'Cart',
          ),
          NavigationDestination(
            icon: SvgPicture.asset('assets/icons/user.svg', height: 24),
            selectedIcon: SvgPicture.asset(
              'assets/icons/user.svg',
              colorFilter: ColorFilter.mode(
                Theme.of(context).colorScheme.primary,
                BlendMode.srcIn,
              ),
              height: 24,
            ),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
