import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:theme_change/provider/dark_theme_provider.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {

    final themeState = Provider.of<DarkThemeProvider>(context);

    return Scaffold(
      appBar: AppBar(title: const Text("My Home")),
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Body Text"),
              SwitchListTile(
                title: Text("Change Theme"),
                secondary: Icon(themeState.getDarkTheme ? Icons.dark_mode_outlined : Icons.light_mode_outlined),
                onChanged: (bool value){
                  themeState.setDarkTheme = value;
                },
                value: themeState.getDarkTheme,
              )
            ],
          )
      ),
    );
  }
}
