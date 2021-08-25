import 'package:gglug/Components/Fileexplorer.dart';

class profile extends StatelessWidget{
  var mainAxisAlignment;

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("Profile"),
      ),
      backgroundColor: Colors.white,
      body: Column(
        children: <Widget>[
          Container(
                  height: 400,
                  margin: EdgeInsets.all(30),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                    
                    
                    SizedBox(width: 30),
                    CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage('Assets/Images/linux.jpg'),
                    ),
                    Padding(
                      padding: EdgeInsets.all(50),
                      child: Column(
                        children: <Widget>[

                          Text('name'),
                          Text('ID'),


                        ],
                      ),
                    ),
                  ],    
                ),
              ),
                
          
        ],  
      ),
    );
  }
}