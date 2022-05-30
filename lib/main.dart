import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // Application name
      title: 'Flutter Stateful Clicker Counter',
      theme: ThemeData(
        // Application theme data, you can set the colors for the application as
        // you want
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'MI FOTO con 19 22'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final String title;
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Color(0xFF080056),
        automaticallyImplyLeading: false,
        leading: Icon(
          Icons.menu,
          color: Colors.white,
          size: 24,
        ),
        title: Text(
          'Agregando Bordes',
          textAlign: TextAlign.center,
        ),
        actions: [],
        centerTitle: false,
        elevation: 2,
      ),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Material(
                      color: Colors.transparent,
                      elevation: 10,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Container(
                        width: 250,
                        height: 90,
                        decoration: BoxDecoration(
                          color: Color(0xFFFBF3D8),
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(
                            color: Color(0xFFFFD500),
                            width: 5,
                          ),
                        ),
                        child: Text(
                          'Edwin Martinez Mendoza',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 110, 0, 0),
                child: Image.network(
                  'https://img.freepik.com/foto-gratis/textura-oscura-acuarela_125540-769.jpg',
                  width: 150,
                  height: 5,
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 20),
                child: Image.network(
                  'https://scontent.fcjs4-1.fna.fbcdn.net/v/t1.15752-9/278435400_702459444207427_9196147405178758188_n.jpg?_nc_cat=108&ccb=1-6&_nc_sid=ae9488&_nc_eui2=AeFgsm0xd1re6PNikN7pWMUXX3ORqjez3LJfc5GqN7PcsnIIYzFvbDrQP6xd-G_wrmOWNZ2D_870S1aCgZPo6soD&_nc_ohc=CUlAaVNmyjsAX_nvp3e&_nc_ht=scontent.fcjs4-1.fna&oh=03_AVIi1yf2-v16u3UhzGdheswLG5BoTHt32BSl0vst9KVj7w&oe=62A30D79',
                  width: 100,
                  height: 100,
                  fit: BoxFit.cover,
                ),
              ),
              Image.network(
                'https://img.freepik.com/foto-gratis/textura-oscura-acuarela_125540-769.jpg',
                width: 150,
                height: 5,
                fit: BoxFit.cover,
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                child: Container(
                  width: 220,
                  height: 40,
                  decoration: BoxDecoration(
                    color: Color(0xFFEEEEEE),
                    border: Border.all(
                      color: Color(0xFF1010C9),
                      width: 5,
                    ),
                  ),
                  child: Text(
                    'PRGRAMACION 6-I',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
