import 'package:flutter/cupertino.dart';
import 'package:nscomponent/nscomponent.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      theme: CupertinoThemeData(
        brightness: Brightness.dark,
        barBackgroundColor: NSColors.partiallyTransparentBackground,
      ),
      home: HomeView(),
    );
  }
}

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: CustomScrollView(slivers: [
        const CupertinoSliverNavigationBar(
          largeTitle: Text('Large Title'),
          border: null,
        ),
        SliverList(
            delegate: SliverChildListDelegate([
          CupertinoListSection.insetGrouped(
            hasLeading: false,
            children: List.generate(
              20,
              (i) => CupertinoListTile(title: Text(i.toString())),
            ),
          )
        ]))
      ]),
    );
  }
}
