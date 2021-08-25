import 'package:gglug/Components/Fileexplorer.dart';

class About extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
          
          children: <Widget>[
            
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(20),
              color: Colors.white,
                child: Column(
                  children:<Widget> [
                    Container(
                      height: 64,
                      margin: EdgeInsets.only(bottom: 10),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            
                            SizedBox(width: 16),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[Text('Data')],
                            )
                          ],
                        ),
                      ),
                  ]
                ),
              ),
          ],
          ),
    );  
  }
}