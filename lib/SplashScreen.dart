import '../Components/Fileexplorer.dart';
// import 'package:gglug/Loginpage/Login.dart';

setlogintrue() async {
  SharedPreferences _sharedPreferences = await SharedPreferences.getInstance();
  _sharedPreferences.setBool('visited', true);
}

setloginfalse() async {
  SharedPreferences _sharedPreferences = await SharedPreferences.getInstance();
  _sharedPreferences.setBool('visited', false);
}

getlogin() async {
  SharedPreferences _sharedPreferences = await SharedPreferences.getInstance();
  return _sharedPreferences.getBool('visited');
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  var visited;
  getlogin() async {
    visited = await getlogin();
  }

  @override
  void initState() {
    super.initState();
    getlogin();
    Timer(Duration(seconds: 1), () {
      if (visited == true) {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(
            builder: (BuildContext context) => MyHomePage(),
          ),
        );
      } else {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(
            builder: (BuildContext context) => LoginPage(),
          ),
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Image.asset('Assets/Images/Glug_logo.jpg'),
      ),
    );
  }
}
