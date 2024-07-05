import 'package:flutter/material.dart';
import '../providers/theme_provider.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget{
  const HomePage({super.key});//const because MaterialApp is const too

  @override
  Widget build(BuildContext context){
    final themeProvider = Provider.of<ThemeProvider>(context);
    return Scaffold(
      appBar: AppBar(),
      body:Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.primary,
                  borderRadius: BorderRadius.circular(20)
                ),
                height: 100,
                child:const Center(
                  child: Text("Some content")
                )
              )
            ),
            const SizedBox(height: 10.0),
            Row(
              children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.primary,
                        borderRadius: BorderRadius.circular(20)
                      ),
                      height: 100,
                      child:const Center(
                        child: Text("Other content")
                      )
                    )
                  ),
                  const SizedBox(width: 10.0),
                  Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.primary,
                          borderRadius: BorderRadius.circular(20)
                        ),
                        height: 100,
                        child:const Center(
                          child: Text("Other content")
                        )
                      )
                  ),
              ],
            ),
            const SizedBox(height: 10.0),
            Expanded(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      themeProvider.themeDataStyle == ThemeData.dark
                          ? 'Dark Theme'
                          : 'Light Theme',
                      style: const TextStyle(fontSize: 25.0),
                    ),
                    const SizedBox(height: 10.0),
                    Transform.scale(
                      scale: 1.4,
                      child: Switch(
                        value: themeProvider.themeDataStyle == ThemeData.dark
                            ? true
                            : false,
                        onChanged: (isOn) {
                          themeProvider.changeTheme();
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 10.0),
            Row(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.primary,
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    height: 100.0,
                    child: const Center(
                      child: Text('Add content'),
                    ),
                  ),
                ),
                const SizedBox(width: 10.0),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.primary,
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    height: 100.0,
                    child: const Center(
                      child: Text('Add content'),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),),
    );
  }
}