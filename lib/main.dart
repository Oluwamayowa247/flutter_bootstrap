import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_bootstrap5/flutter_bootstrap5.dart';

void main() => runApp(FlutterBoostrap());

class FlutterBoostrap extends StatelessWidget {
  const FlutterBoostrap({super.key});

  @override
  Widget build(BuildContext context) {
    return FlutterBootstrap5(
      builder: (BuildContext context) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          home: BootStrapWebsite(),
          theme: BootstrapTheme.of(context).toTheme(
            theme: ThemeData(
              scaffoldBackgroundColor:
                  BootstrapTheme.of(context).colors.black50,
              appBarTheme: AppBarTheme(
                elevation: 0.0,
              ),
            ),
          ),
        );
      },
    );
  }
}

class BootStrapWebsite extends StatelessWidget {
  const BootStrapWebsite({super.key});

  @override
  Widget build(BuildContext context) {
    return BootstrapTheme(
      data: BootstrapTheme.of(context),
      builder: (context) {
        return FB5Container.fluid(
          child: Scaffold(
            appBar: AppBar(
              backgroundColor: ColorScheme.dark().background,
              leading: PopupMenuButton(
                  itemBuilder: (context) => [
                        PopupMenuItem(
                          child: Text(
                              'Exploring the power of Flutter Bootstrap 5 🚀'),
                        ),
                      ]),
              elevation: 0,
              title: Text(
                'Flutter Bootstrap 5',
              ),
              actions: [
                TextButton(
                  child: Text(
                    'Home',
                    style: TextStyle(color: Colors.white),
                  ),
                  onPressed: () {},
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'About',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'Contact Us',
                    style: TextStyle(
                      color: BootstrapColors.white,
                    ),
                  ),
                ),
                SizedBox(width: 50.0),
              ],
            ),
            body: SingleChildScrollView(
              child: FB5Container.fluid(
                child: Column(
                  children: [
                    FB5Row(
                      //  classNames: ,
                      children: [
                        FB5Col(
                          child: _buildCard('Card 1', 'This is card 1'),
                        ),
                        FB5Col(
                          child: _buildCard('Card 2', 'This is card 2'),
                        ),
                        FB5Col(
                          child: _buildCard('Card 3', 'This is card 3'),
                        ),
                        FB5Col(
                          child: _buildCard('Card 4', 'This is card 4'),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height,
                      //    width: MediaQuery.of(context).size.width,
                      child: GridView.count(
                        crossAxisCount: 4,
                        mainAxisSpacing: 2,
                        children: [
                          Card(
                            child: Text(
                              'First Grid',
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Card(
                            child: Text(
                              'Second Grid',
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Card(
                            child: Text(
                              'Third Grid',
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Card(
                            child: Text(
                              'Fourth Grid',
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Card(
                            child: Text(
                              'Fifth Grid',
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Card(
                            child: Text(
                              'Sixth Grid',
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Card(
                            child: Text(
                              'Seventh Grid',
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Card(
                            child: Text(
                              'Eigth Grid',
                              textAlign: TextAlign.center,
                            ),
                          )
                        ],
                      ),
                    )

                    // FB5Grid(
                    //   children: [
                    //     _buildCard('Grid1', 'First Grid'),
                    //     _buildCard('Grid2', 'Second Grid'),
                    //     _buildCard('Grid3', 'Third Grid'),
                    //     _buildCard('Grid4', 'Fourth Grid'),
                    //   ],
                    // ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}

Widget _buildCard(String title, String content) {
  return Card(
    child: Column(
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: 50.0,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        SizedBox(height: 10.0),
        Text(
          content,
          style: TextStyle(
            fontSize: 50.0,
            color: Colors.black,
          ),
        ),
        SizedBox(height: 10.0),
        TextButton(
          onPressed: () {},
          child: Text(
            content,
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ],
    ),
  );
}
