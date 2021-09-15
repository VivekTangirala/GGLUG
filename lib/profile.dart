import 'package:gglug/Components/Fileexplorer.dart';

class profile extends StatelessWidget{
  var mainAxisAlignment;
  var buildCircle;

  @override
  Widget build(BuildContext context){
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        backgroundColor: Colors.black,
        
        title: Text('Profile'),
        centerTitle: true,
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
          height: MediaQuery.of(context).size.height ,
          width: MediaQuery.of(context).size.width *1,

                child: Padding(padding: EdgeInsets.only(top: 40),
                  child: Column( 
                    children: [
                      Align(
                        alignment: Alignment.topCenter,
                        child: CircleAvatar(
                          radius: 50,
                          backgroundImage: AssetImage('Assets/Images/linux.jpg'),
                              child: Padding(
                                padding: const EdgeInsets.only(top:70,left: 70),
                                child: Container(
                                  height: 40,
                                  width: 40,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                      width: 4,
                                      color: Colors.white,
                                    ),
                                    color:  Color(0xFFEEEEEE),
                                  ),
                                  child: Icon(
                                    Icons.edit,
                                    color: Colors.black,
                                    size: 20,
                                    
                                  ),
                                ),
                              ),
                        ),
                      ),
                      SizedBox(height: MediaQuery.of(context).size.height / 20),
                      Align(
                        alignment: Alignment.center,
                        child: Container(
                          padding: EdgeInsets.symmetric(
                            vertical: MediaQuery.of(context).size.height / 30,
                            horizontal: MediaQuery.of(context).size.width / 30),
                          height: MediaQuery.of(context).size.height * 2.2 / 4,
                          width: MediaQuery.of(context).size.width * 3 / 4,
                          decoration: BoxDecoration(
                            color: Color(0xFFEEEEEE),
                            borderRadius:
                              BorderRadius.circular(MediaQuery.of(context).size.width / 20),
                              
                          ),
                          child: Column(
                            children: <Widget>[
                              TextField(
                                decoration:  InputDecoration(
                                  labelText: "NAME",
                                  floatingLabelBehavior: FloatingLabelBehavior.always,
                                  hintText: "Ruthwik",
                                  hintStyle: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                              TextField(
                                decoration:  InputDecoration(
                                  labelText: "PIN NO",
                                  floatingLabelBehavior: FloatingLabelBehavior.always,
                                  hintText: "221910303022",
                                  hintStyle: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                              TextField(
                                decoration:  InputDecoration(
                                  labelText: "MAIL ID",
                                  floatingLabelBehavior: FloatingLabelBehavior.always,
                                  hintText: "221910303022@gitam.in",
                                  hintStyle: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                              TextField(
                                decoration:  InputDecoration(
                                  labelText: "GROUP",
                                  floatingLabelBehavior: FloatingLabelBehavior.always,
                                  hintText: "Technical",
                                  hintStyle: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                              SizedBox(height: 60,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(padding: EdgeInsets.symmetric(horizontal: 20),
                                    child: OutlinedButton(
                                      onPressed: (){},
                                      child: Text("CANCEL",
                                        style: TextStyle(
                                          fontSize: 14,
                                          letterSpacing: 2.2,
                                          color: Colors.black
                                        ),
                                      ),
                                    ),
                                  ),
                                  ElevatedButton(
                                    onPressed: (){},
                                    
                                    child: Padding(padding: EdgeInsets.symmetric(horizontal: 25),
                                      child: Text("SAVE",
                                          style: TextStyle(
                                            fontSize: 14,
                                            letterSpacing: 2.2,
                                            color: Colors.white
                                          ),
                                        ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
          ),
        ),
      ), 
    );
  }
}