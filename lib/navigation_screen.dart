import 'package:desktop_app/screens/screens.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter/material.dart';

class NavigationScreen extends StatefulWidget {
  const NavigationScreen({Key? key}) : super(key: key);

  @override
  State<NavigationScreen> createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {
  int _index = 0;
  @override
  Widget build(BuildContext context) {
    return NavigationView(
      pane: NavigationPane(
        size: const NavigationPaneSize(
          openMaxWidth: 180,
          openWidth: 140,
          topHeight: 40,
          compactWidth: 72,
        ),
        header: const Padding(
          padding: EdgeInsets.only(left: 20),
        ),
        items: [
          PaneItem(
              icon: const Icon(Icons.home, size: 30),
              title: Text('Home'.toUpperCase(),
                  style: const TextStyle(fontWeight: FontWeight.w800))),
          PaneItem(
              icon: const Icon(Icons.chat_rounded, size: 30),
              title: Text('Message'.toUpperCase(),
                  style: const TextStyle(fontWeight: FontWeight.w800)))
        ],
        selected: _index,
        displayMode: PaneDisplayMode.compact,
        onChanged: (i) {
          setState(() {
            _index = i;
          });
        },
      ),
      // appBar: NavigationAppBar(
      //     height: 40,
      //     leading: const Padding(
      //       padding: EdgeInsets.only(top: 10),
      //       child: Icon(
      //         Icons.arrow_back,
      //         size: 20,
      //       ),
      //     ),
      //     title: Padding(
      //       padding: const EdgeInsets.only(top: 10),
      //       child: Text('MessenDay'.toUpperCase(),
      //           style: const TextStyle(
      //               fontWeight: FontWeight.bold, letterSpacing: 2)),
      //     )),
      content: NavigationBody(
        index: _index,
        children: const [HomeScreen(), ChatScreen()],
      ),
    );
  }
}
