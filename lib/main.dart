import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_image_classification/screens/home_screen.dart';
import 'package:image_picker/image_picker.dart';
import 'package:tflite/tflite.dart';
import 'package:flutter_image_classification/screens/multiple_webview.dart';

import 'package:flutter_image_classification/screens/plants_home_dart.dart';
import 'package:flutter_image_classification/widgets/widgets.dart';
import 'package:flutter_image_classification/widgets/colors.dart';

import 'package:flutter_image_classification/screens/google_maps.dart';

void main() {
  // runApp(MyHomePage());
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => HomeRoute(),
      '/second': (context) => SecondRoute(),
      '/third': (context) => MyHomePage(),
       '/fourth': (context) => MyApp(),
      '/fifth': (context) => Plant_App(),
      '/sixth':(context) => Google_maps(),
    },
  ));
}
class HomeRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: themeColor,
          title: Text("Home")),
      backgroundColor: themeColor,

      //the drawer widget
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(
              accountName: new Text("TakeoffAndroid"),
              accountEmail: new Text("takeoffandroid@gmail.com"),
              currentAccountPicture: CircleAvatar(
                  backgroundColor: Colors.yellow,
                  child: Text('T', style: TextStyle(color: Colors.black87))
              ),
              decoration: new BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [
                      themeColor,
                      themeColor
                    ]),
              ),
            ),
            new ListTile(
                leading: Icon(Icons.home),
                title: new Text("Home"),
                onTap: () {
                  Navigator.pop(context);
                }),
            new ListTile(
                leading: Icon(Icons.person),
                title: new Text("Friends"),
                onTap: () {
                  Navigator.pop(context);
                }),
            new ListTile(
                leading: Icon(Icons.share),
                title: new Text("Share"),
                onTap: () {
                  Navigator.pop(context);
                }),
            new Divider(),
            new ListTile(
                leading: Icon(Icons.settings),
                title: new Text("Settings"),
                onTap: () {
                  Navigator.pop(context);
                }),
            new ListTile(
                leading: Icon(Icons.power_settings_new),
                title: new Text("Logout"),
                onTap: () {
                  Navigator.pop(context);
                }),
          ],
        ),
      ),

      //body Of homepage starts here

      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/Background.png',), fit: BoxFit.cover),

        ),
          child: Column(
            children: <Widget>[

              Intro(
                title: "🇸🇬 Plant Finder",
                subtitle: "Learn more about local plant species!",

              ),
              SizedBox(height: 150,),
              Container(
                margin: EdgeInsets.all(10),
                height: 50.0,
                width: 300,
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                      side: BorderSide(color: Color.fromRGBO(0, 100, 0, 1))),
                  onPressed: () {
                    Navigator.pushNamed(context, '/second');
                  },
                  padding: EdgeInsets.all(10.0),
                  color: themeColor,
                  textColor: Colors.white,
                  child: Text("Test Button",
                      style: TextStyle(fontFamily: "Poppins",fontSize: 25)),
                ),
              ),
              SizedBox(height: 10,),
              Container(
                margin: EdgeInsets.all(10),
                height: 55.0,
                width: 300,
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                      side: BorderSide(color: Color.fromRGBO(0, 100, 0, 1))),
                  onPressed: () {
                    Navigator.pushNamed(context, '/third');
                  },
                  padding: EdgeInsets.all(10.0),
                  color: themeColor,
                  textColor: Colors.white,
                  child: Text("Plant Identifier",
                      style: TextStyle(fontFamily: "Poppins",fontSize: 25)),
                ),
              ),
              SizedBox(height: 10,),
              Container(
                margin: EdgeInsets.all(10),
                height: 50.0,
                width: 300,
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                      side: BorderSide(color: Color.fromRGBO(0, 100, 0, 1))),
                  onPressed: () {
                    Navigator.pushNamed(context, '/fifth');
                  },
                  padding: EdgeInsets.all(10.0),
                  color: themeColor,
                  textColor: Colors.white,
                  child: Text('Plant Information',
                      style: TextStyle(fontFamily: "Poppins",fontSize: 25)),
                ),
              ),
              SizedBox(height: 10,),
              Container(
                margin: EdgeInsets.all(10),
                height: 55.0,
                width: 300,
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                      side: BorderSide(color: Color.fromRGBO(0, 100, 0, 1))),
                  onPressed: () {
                    Navigator.pushNamed(context, '/sixth');
                  },
                  padding: EdgeInsets.all(10.0),
                  color: themeColor,
                  textColor: Colors.white,
                  child: Text('NParks Finder',
                      style: TextStyle(fontFamily: "Poppins",fontSize: 25)),
                ),
              ),


        ]
              ),
                ),

    );
  }
}

class SecondRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: themeColor,
      body: SafeArea(
        child: Column(

        children: <Widget>[
          NavBar(),
          RaisedButton(
          child: Text('Wikipedia API Plant Information'),
          onPressed: () {
            Navigator.pushNamed(context, '/fourth');
          },
        ),
          RaisedButton(
           onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Back!'),
        ),
      ],
        ),
      ),
    );
  }
}




class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(

          primarySwatch: Colors.blue,
        ),
        //multiple webview page - Home
        home: Home()
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Future<File> imageFile;
  File _image;
  String result = '';
  ImagePicker imagePicker;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    imagePicker = ImagePicker();
    loadModelFiles();
  }

  //TODO load model files
  loadModelFiles() async {
    String res = await Tflite.loadModel(
        model: "assets/model.tflite",
        // model: "assets/model_unquant.tflite",
        labels: "assets/labels.txt",
        numThreads: 1, // defaults to 1
        isAsset: true, // defaults to true, set to false to load resources outside assets
        useGpuDelegate: false // defaults to false, set to true to use GPU delegate
    );
  }

  //run inference and show results
  doImageClassification() async {
    var recognitions = await Tflite.runModelOnImage(
        path: _image.path,   // required
        imageMean: 0.0,   // defaults to 117.0
        imageStd: 255.0,  // defaults to 1.0
        numResults: 2,    // defaults to 5
        threshold: 0.2,   // defaults to 0.1
        asynch: true      // defaults to true
    );
    if(recognitions !=null){
      recognitions.forEach((element) {
        result+=element["label"] +" "+ (element["confidence"] as double).toStringAsFixed(2)+ "\n";

      });

      setState(() {
        result;
      });
    }
  }

  _imgFromCamera() async {
    PickedFile pickedFile =
    await imagePicker.getImage(source: ImageSource.camera);
    _image = File(pickedFile.path);
    setState(() {
      _image;
      doImageClassification();
    });
  }

  _imgFromGallery() async {
    PickedFile pickedFile =
    await imagePicker.getImage(source: ImageSource.gallery);
    _image = File(pickedFile.path);
    setState(() {
      _image;
      doImageClassification();
    });
  }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            body: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/Background.png',), fit: BoxFit.cover),
              ),
              child: Column(
                children: [
                  SizedBox(
                    width: 100,
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 100),
                    child: Stack(children: <Widget>[
                      Stack(children: <Widget>[
                        Center(
                          child: Image.asset(
                            'images/frame3.png',
                            height: 210,
                            width: 200,
                          ),
                        ),
                      ]),
                      Center(
                        child: FlatButton(
                          onPressed: _imgFromGallery,
                          onLongPress: _imgFromCamera,
                          child: Container(
                            margin: EdgeInsets.only(top: 5),
                            child: _image != null
                                ? Image.file(
                              _image,
                              width: 133,
                              height: 198,
                              fit: BoxFit.fill,
                            )
                                : Container(
                              width: 140,
                              height: 190,
                              child: Icon(
                                Icons.camera_alt,
                                color: Colors.grey[800],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ]),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    child: Text(
                      '$result',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontFamily: 'Poppins', fontSize: 36),
                    ),
                  ),
                ],
              ),
            )));
  }
}






class Plant_App extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: PlantsHome(),
    );
  }
}

class Google_maps extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: GoogleMaps(),
    );
  }
}












//
//
//
// @override
// Widget build(BuildContext context) {
//   return Scaffold(
// return Scaffold(
//               appBar: AppBar(
//                     backgroundColor: AppColors.gradient_purple_begin,
//                     title: Text("XSpends")),
//               drawer: new Drawer(
//                   child: new ListView(
//                       children: <Widget>[
//                    new UserAccountsDrawerHeader(
//                     accountName: new Text("TakeoffAndroid"),
//                     accountEmail: new Text("takeoffandroid@gmail.com"),
//                     currentAccountPicture: CircleAvatar(
//                       backgroundColor: Colors.yellow,
//                       child: Text('T', style: TextStyle(color: Colors.black87))
//               ),
//               decoration: new BoxDecoration(
//                   gradient: LinearGradient(
//                   begin: Alignment.centerLeft,
//                   end: Alignment.centerRight,
//               colors: [
//                   AppColors.gradient_purple_begin,
//                   AppColors.gradient_purple_end
//                 ]),
//               ),
//               ),
//               new ListTile(
//                     leading: Icon(Icons.home),
//                     title: new Text("Home"),
//                     onTap: () {
//                   Navigator.pop(context);
//                   }),
//               new ListTile(
//                     leading: Icon(Icons.person),
//                     title: new Text("Friends"),
//               onTap: () {
//                     Navigator.pop(context);
//               }),
//               new ListTile(
//                   leading: Icon(Icons.share),
//                   title: new Text("Share"),
//                   onTap: () {
//                     Navigator.pop(context);
//               }),
//               new Divider(),
//               new ListTile(
//                       leading: Icon(Icons.settings),
//                       title: new Text("Settings"),
//                   onTap: () {
//                   Navigator.pop(context);
//               }),
//               new ListTile(
//               leading: Icon(Icons.power_settings_new),
//                     title: new Text("Logout"),
//                     onTap: () {
//               Navigator.pop(context);
//               }),
//               ],
//               ),
//               ),
//               );
// }
//
//
//
//
//
//




