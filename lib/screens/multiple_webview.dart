import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:flutter_image_classification/widgets/colors.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomeState();
  }
}

class _HomeState extends State<Home> {

  final _key = UniqueKey();
  bool _isLoadingPage;
  WebViewController controller;
  int _selectedIndex = 0;

  List<String> arr_links = [
    'https://en.wikipedia.org/wiki/Oenothera_speciosa',
    'https://en.wikipedia.org/wiki/Paphiopedilum_micranthum',
    'https://en.wikipedia.org/wiki/Helianthus',
    'https://en.wikipedia.org/wiki/Campanula_medium',
    'https://en.wikipedia.org/wiki/Sweet_pea',
    // 'https://en.wikipedia.org/wiki/Calendula_officinalis',
    // 'https://en.wikipedia.org/wiki/Lilium_lancifolium',
    // 'https://en.wikipedia.org/wiki/Phalaenopsis_amabilis',
    // 'https://en.wikipedia.org/wiki/Caesalpinia_pulcherrima',
    // 'https://en.wikipedia.org/wiki/Aconitum',

  ];

  @override
  void initState() {
    super.initState();
    _isLoadingPage = true;
  }


  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Multiple WebView'),
        backgroundColor: themeColor,
      ),
      body: Stack(
        children: <Widget>[
          WebView(
            key: _key,
            initialUrl: arr_links[_selectedIndex],
            javascriptMode: JavascriptMode.unrestricted,
            onWebViewCreated: (WebViewController webViewController) {
              controller = webViewController;
            },
            onPageFinished: (finish) {
              setState(() {
                _isLoadingPage = false;
              });
            },
          ),
          _isLoadingPage ? Scaffold(
            body: Center(
              child: CircularProgressIndicator(
                valueColor: new AlwaysStoppedAnimation<Color>(
                    Colors.white),
              ),
            ),
            backgroundColor: Colors.black.withOpacity(
                0.70), // this is the main reason of transparency at next screen. I am ignoring rest implementation but what i have achieved is you can see.
          ) : Stack()
        ],
      ),

      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.local_florist),
            title: Text('P-1'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.local_florist),
            title: Text('P-2'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.local_florist),
            title: Text('P-3'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.local_florist),
            title: Text('P-4'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.local_florist),
            title: Text('P-5'),
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      _isLoadingPage = true;
      controller.loadUrl(arr_links[_selectedIndex]);
    });
  }
}