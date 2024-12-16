import 'package:flutter/material.dart';
import 'package:flutter_4/models/game.dart';
import 'package:flutter_4/models/user.dart';
import 'package:flutter_4/pages/catalog_page.dart';
import 'package:flutter_4/pages/favorites_page.dart';
import 'package:flutter_4/pages/profile_page.dart';

User user = User(
  "Александр Журавлёв",
  "sirok@yanima.space",
  "+7911111111",
  "https://sun9-48.userapi.com/impg/Vg2H3hop-IGICTWqnDbp4uiIniMYUBTCqu_6IQ/vUu0J5gVyhQ.jpg?size=960x1200&quality=95&sign=e5c3185d47fc21b8a2cef88d7a1e4a9f&type=album",
);

class PageWrapper extends StatefulWidget {
  @override
  _PageWrapper createState() => _PageWrapper();
}

class _PageWrapper extends State<PageWrapper> {
  int _selectedPageIndex = 0;
  List<Game> _favoriteGames = [];

  void _onItemTapped(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  void _toggleFavorite(Game game) {
    setState(() {
      if (_favoriteGames.contains(game)) {
        _favoriteGames.remove(game);
      } else {
        _favoriteGames.add(game);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> _pages = <Widget>[
      CatalogPage(
          favoriteGames: _favoriteGames, onFavoriteToggle: _toggleFavorite),
      FavoritesPage(
          onFavoriteToggle: _toggleFavorite, favoriteGames: _favoriteGames),
      ProfilePage(user: user)
    ];
    return Scaffold(
      body: _pages.elementAt(_selectedPageIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Главная"),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite), label: "Отложенное"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Профиль")
        ],
        currentIndex: _selectedPageIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
