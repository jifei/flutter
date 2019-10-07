import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  // TabController _tabController;

  // @override
  // void dispose() {
  //   _tabController.dispose();
  //   super.dispose();
  // }

  // void initState() {
  //   super.initState();
  //   _tabController = new TabController(vsync: this, length: 2);
  // }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    final List<Tab> tabs = <Tab>[
      new Tab(
        text: '头条',
      ),
      new Tab(
        text: '社会',
      ),
      new Tab(
        text: '国内',
      ),
      new Tab(
        text: '娱乐',
      ),
      new Tab(
        text: '体育',
      ),
      new Tab(
        text: '军事',
      ),
      new Tab(
        text: '科技',
      ),
      new Tab(
        text: '财经',
      ),
    ];

    return new Scaffold(
      appBar: new AppBar(
        title: Text('TopBarPage'),
        bottom: new TabBar(
          tabs: tabs,
          //这表示当标签栏内容超过屏幕宽度时是否滚动，因为我们有8个标签栏所以这里设置是
          isScrollable: true,
          // controller: _tabController,
          //标签颜色
          labelColor: Colors.orange,
          //未被选中的标签的颜色
          unselectedLabelColor: Colors.white,
          labelStyle: new TextStyle(fontSize: 18.0),
        ),
      ),
      body: new TabBarView(
        children: tabs.map((Tab tab) {
          return new Center(
            child: new Text(
              tab.text,
              style: new TextStyle(fontSize: 30.0),
            ),
          );
        }).toList(),
      ),
    );
  }
}
