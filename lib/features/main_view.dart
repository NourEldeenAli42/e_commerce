import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:paw_print/features/favourites/favourites_view.dart';
import 'package:paw_print/features/home/home_view.dart';
import 'package:paw_print/features/profile/profile_view.dart';

class MainView extends StatefulWidget {
  const new({super.key});

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  Widget activeScreen = HomeView();
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Verve',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        actions: [
          Icon(
            Icons.search,
            color: Theme.of(context).colorScheme.brightness == Brightness.dark
                ? Colors.white
                : Colors.black,
            size: 30,
          ),
          const SizedBox(width: 10),
          Icon(
            Icons.shopping_bag_outlined,
            color: Theme.of(context).colorScheme.brightness == Brightness.dark
                ? Colors.white
                : Colors.black,
            size: 30,
          ),
        ],
        actionsPadding: const EdgeInsets.all(16),
      ),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        onTap: (value) {
          switch (value) {
            case 0:
              setState(() {
                activeScreen = HomeView();
                currentIndex = 0;
              });
              break;
            case 1:
              // setState(() {
              //   activeScreen = const SearchView();
              // });
              break;
            case 2:
              setState(() {
                activeScreen = const FavoritesView();
                currentIndex = 2;
              });
              break;
            case 3:
              // setState(() {
              //   activeScreen = const CartView();
              // });
              break;
            case 4:
              setState(() {
                activeScreen = const ProfileView();
                currentIndex = 4;
              });
              break;
          }
        },
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/icons/home.svg'),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/icons/SearchMenu.svg'),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/icons/heart.svg'),
            label: 'Favorites',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/icons/cart.svg'),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/icons/user.svg'),
            label: 'Profile',
          ),
        ],
        currentIndex: currentIndex,
      ),
      body: activeScreen,
    );
  }
}
