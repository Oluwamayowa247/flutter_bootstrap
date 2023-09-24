import 'package:flutter/material.dart';
import 'package:flutter_bootstrap5/flutter_bootstrap5.dart';

void main() => runApp(FlutterBoostrap());

class FlutterBoostrap extends StatelessWidget {
  const FlutterBoostrap({super.key});

  @override
  Widget build(BuildContext context) {
    return FlutterBootstrap5(
      // breakPoints:
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
                      classNames: 'mt-5 px-5',
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
                        FB5Col(
                          child: _buildCard('Card 4', 'This is card 5'),
                        ),
                        FB5Col(
                          child: _buildCard('Card 4', 'This is card 6'),
                        ),
                        FB5Col(
                          child: _buildCard('Card 4', 'This is card 7'),
                        ),
                        FB5Col(
                          child: _buildCard('Card 4', 'This is card 8'),
                        ),
                        FB5Col(
                          child: _buildCard('Card 4', 'This is card 9'),
                        ),
                        FB5Col(
                          child: _buildCard('Card 4', 'This is card 10'),
                        ),
                      ],
                    ),
                    FB5Grid(classNames: 'row-cols-7', children: [
                      _buildCard('Hi', 'This is Grid 1'),
                      _buildCard('Hi', 'This is Grid 2'),
                      _buildCard('Hi', 'This is Grid 3'),
                      _buildCard('Hi', 'This is Grid 4'),
                      _buildCard('Hi', 'This is Grid 5'),
                      _buildCard('Hi', 'This is Grid 6'),
                      _buildCard('Hi', 'This is Grid 7'),
                      _buildCard('Hi', 'This is Grid 8'),
                      _buildCard('Hi', 'This is Grid 9'),
                      _buildCard('Hi', 'This is Grid 10'),
                      _buildCard('Hi', 'This is Grid 11'),
                      _buildCard('Hi', 'This is Grid 12'),
                      _buildCard('Hi', 'This is Grid 13'),
                      _buildCard('Hi', 'This is Grid 14'),
                    ])
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
            fontSize: 10.0,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        SizedBox(height: 10.0),
        Text(
          content,
          style: TextStyle(
            fontSize: 30.0,
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
