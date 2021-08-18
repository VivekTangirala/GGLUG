import '../Components/Fileexplorer.dart';

List<String> _username = ["Vivek", "Shankar", "Ruthwik", "Harikalyan"];
List<String> _password = ["Vivek", "Shankar", "Ruthwik", "Harikalyan"];

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _emailcontroller = TextEditingController();
  final TextEditingController _passwordcontroller = TextEditingController();
  late String email, password;
  @override
  void dispose() {
    super.dispose();
    _emailcontroller.dispose();
    _passwordcontroller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Colors.grey[300],
      body: SingleChildScrollView(
        child: SafeArea(
            child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Stack(
            children: [
              _backgroundlogo(),
              Align(
                alignment: Alignment.center,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    _buildLogo(),
                    SizedBox(height: MediaQuery.of(context).size.height / 20),
                    _login(),
                    _buildForgetPasswordButton(),
                  ],
                ),
              )
            ],
          ),
        )),
      ),
    );
  }

  Widget _backgroundlogo() {
    return Container(
      height: MediaQuery.of(context).size.height * 2 / 3,
      width: MediaQuery.of(context).size.width,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.deepOrange,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(MediaQuery.of(context).size.width / 5),
            bottomRight: Radius.circular(MediaQuery.of(context).size.width / 5),
          ),
        ),
      ),
    );
  }

  Widget _buildLogo() {
    return Align(
      alignment: Alignment.topCenter,
      child: Text(
        'GITAM-GLUG',
        style: TextStyle(
          fontSize: MediaQuery.of(context).size.height / 20,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
    );
  }

  Widget _login() {
    return Align(
      alignment: Alignment.center,
      child: Container(
        padding: EdgeInsets.symmetric(
            vertical: MediaQuery.of(context).size.height / 30,
            horizontal: MediaQuery.of(context).size.width / 30),
        height: MediaQuery.of(context).size.height * 2.2 / 4,
        width: MediaQuery.of(context).size.width * 3 / 4,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius:
              BorderRadius.circular(MediaQuery.of(context).size.width / 20),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _buildName(),
            _buildEmailRow(),
            _buildPasswordRow(),
            _buildLoginButton(),
          ],
        ),
      ),
    );
  }

  Widget _buildName() {
    return Text(
      "Login",
      style: TextStyle(
          fontSize: MediaQuery.of(context).size.height / 30,
          fontWeight: FontWeight.bold,
          color: Colors.deepOrange),
    );
  }

  Widget _buildEmailRow() {
    return Padding(
      padding: EdgeInsets.all(0),
      child: TextFormField(
        controller: _emailcontroller,
        keyboardType: TextInputType.emailAddress,
        style: TextStyle(
            fontSize: MediaQuery.of(context).size.height / 40,
            fontWeight: FontWeight.normal),
        onChanged: (value) {
          setState(() {
            email = value;
          });
        },
        decoration: InputDecoration(
          prefixIcon: Icon(
            Icons.mail_outline,
            color: Colors.orange[300],
          ),
          labelText: 'E-mail/phone',
        ),
      ),
    );
  }

  Widget _buildPasswordRow() {
    return Padding(
      padding: EdgeInsets.all(0),
      child: TextFormField(
        controller: _passwordcontroller,
        keyboardType: TextInputType.text,
        style: TextStyle(
            fontSize: MediaQuery.of(context).size.height / 40,
            fontWeight: FontWeight.normal),
        obscureText: true,
        onChanged: (value) {
          setState(() {
            password = value;
          });
        },
        decoration: InputDecoration(
          prefixIcon: Icon(
            Icons.security,
            color: Colors.orange[300],
          ),
          labelText: 'Password',
        ),
      ),
    );
  }

  Widget _buildLoginButton() {
    return InkWell(
      onTap: () async {
        print("Pressed");
        for (var i = 0; i < _username.length; i++) {
          if (_emailcontroller.text == _username[i]) {
            if (_passwordcontroller.text == _password[i]) {
              setlogintrue();
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (BuildContext context) {
                    return MyHomePage();
                  },
                ),
              );
              break;
            } else {
              showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: Text("Incorrect Password"),
                      content: Text("Please check your password.."),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: Text("OK"),
                        ),
                      ],
                    );
                  });
              break;
            }
          } else {
            showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: Text("Incorrect E-Mail"),
                    content: Text("Please check your E-Mail.."),
                    actions: [
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: Text("OK"),
                      ),
                    ],
                  );
                });
            break;
          }
        }
      },
      child: Container(
        decoration: BoxDecoration(
            color: Colors.orange,
            borderRadius:
                BorderRadius.circular(MediaQuery.of(context).size.width / 50)),
        height: 1.0 * (MediaQuery.of(context).size.height / 20),
        width: 5 * (MediaQuery.of(context).size.width / 10),
        child: Center(
          child: Text(
            "SignIN",
            style: TextStyle(
              color: Colors.white,
              letterSpacing: 1.5,
              fontSize: MediaQuery.of(context).size.height / 40,
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildForgetPasswordButton() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: <Widget>[
        TextButton(
          onPressed: () {},
          child: Text("Forgot Password?"),
        ),
      ],
    );
  }
}
