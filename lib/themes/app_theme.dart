import 'package:flutter/material.dart';

class AppTheme {
  get generalTheme {
    return ThemeData(
      appBarTheme: _mainAppBarTheme,
      floatingActionButtonTheme: _fabTheme,
      buttonTheme: _buttonTheme,
      scaffoldBackgroundColor: Colors.white,
      primaryColor: Colors.green,
      listTileTheme: _listTileTheme,
      cardTheme: CardTheme(
        margin: EdgeInsets.all(5),
        elevation: 8,
      ),
      // ... etc
    );
  }

  /*
   *This is the main theme of the app bar and we can customize it if we want and it would be reflected on the whole app */
  get _mainAppBarTheme {
    return AppBarTheme(
      centerTitle: true,
      // ... etc
    );
  }

  get _fabTheme {
    return FloatingActionButtonThemeData(
      backgroundColor: Colors.yellow,
      elevation: 10.0,
      // ... etc
    );
  }

  get _buttonTheme {
    return ButtonThemeData(
      buttonColor: Colors.lightGreenAccent,
      // ... etc
    );
  }

  get _listTileTheme {
    return ListTileThemeData(
      textColor: Colors.black,
      // ...etc
    );
  }
  // ... etc
}
