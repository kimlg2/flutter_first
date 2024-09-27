import 'package:flutter/cupertino.dart';

class IostyleScreen extends StatefulWidget {
  const IostyleScreen({super.key});

  @override
  State<IostyleScreen> createState() =>
      _IostyleScreenState();
}

class _IostyleScreenState extends State<IostyleScreen> {
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      home: CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          middle: Text('쿠퍼티노 앱'),
        ),
          child: Center(child: Text('쿠퍼티노 앱'),
          ),
      ),
    );
  }
}
