import 'package:flutter/material.dart';
import 'package:meals_app/screens/meal_detail_screen.dart';
import 'package:flutter/services.dart';

import 'screens/category_meals_screen.dart';
import 'screens/categories_screen.dart';

void main() {
  // ## Makes the app orientation fixed in Portrait Up mode
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
    [DeviceOrientation.portraitUp],
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = ThemeData(
      primarySwatch: Colors.pink,
      accentColor: Colors.amber,
      canvasColor: Color.fromRGBO(255, 254, 229, 1),
      fontFamily: 'Raleway',
      textTheme: ThemeData.light().textTheme.copyWith(
            bodyText2: TextStyle(
              color: Color.fromRGBO(20, 51, 51, 1),
            ),
            bodyText1: TextStyle(
              color: Color.fromRGBO(20, 51, 51, 1),
            ),
            headline6: TextStyle(
              fontFamily: 'RobotoCondensed',
              fontSize: 20,
              fontWeight: FontWeight.bold,
              letterSpacing: 0.4,
            ),
          ),
      // errorColor: ,
      // buttonColor: ,
      // secondaryHeaderColor: ,
      // appBarTheme: ,
      visualDensity: VisualDensity.adaptivePlatformDensity,
    );
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Deli Meals',
      theme: theme,
      home: CategoriesScreen(),
      // initialRoute: '/',
      routes: {
        // CategoriesScreen.routeName: (ctx) => CategoriesScreen(),
        CategoryMealsScreen.routeName: (ctx) => CategoryMealsScreen(),
        MealDetailScreen.routeName: (ctx) => MealDetailScreen(),
      },
      onGenerateRoute: (settings) {
        print(settings.name);
        return;
      },
      onUnknownRoute: (settings) {
        return MaterialPageRoute(
          builder: (ctx) => CategoriesScreen(),
        );
      },
    );
  }
}
