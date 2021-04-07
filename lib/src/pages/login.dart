import 'package:flutter/material.dart';  
import 'package:login_fresh/login_fresh.dart';

void main() {  
  runApp(MyLogin());  
}  
  
class MyLogin extends StatefulWidget {  
  //You have to create a list with the type of login's that you are going to import into your application  
  
  @override  
  _MyLoginState createState() => _MyLoginState();  
}  
  
class _MyLoginState extends State<MyLogin> {  
  @override  
  Widget build(BuildContext context) {  
  
  
    return MaterialApp(  
        title: 'Flutter Demo',  
        theme: ThemeData(  
          primarySwatch: Colors.blue,  
          visualDensity: VisualDensity.adaptivePlatformDensity,  
        ),  
        home: Scaffold(  
            body: buildLoginFresh()));  
  }  
  
  LoginFresh buildLoginFresh() {  
  
    List<LoginFreshTypeLoginModel> listLogin = [  
      LoginFreshTypeLoginModel(  
          callFunction: (BuildContext _buildContext) {  
            // develop what they want the facebook to do when the user clicks  
  },  
          logo: TypeLogo.facebook),  
      LoginFreshTypeLoginModel(  
          callFunction: (BuildContext _buildContext) {  
            // develop what they want the Google to do when the user clicks  
  },  
          logo: TypeLogo.google),  
      LoginFreshTypeLoginModel(  
          callFunction: (BuildContext _buildContext) {  
            print("APPLE");  
            // develop what they want the Apple to do when the user clicks  
  },  
          logo: TypeLogo.apple),  
      LoginFreshTypeLoginModel(  
          callFunction: (BuildContext _buildContext) {  
            Navigator.of(_buildContext).push(MaterialPageRoute(  
              builder: (_buildContext) => widgetLoginFreshUserAndPassword(),  
            ));  
          },  
          logo: TypeLogo.userPassword),  
    ];  
  
    return LoginFresh(  
            pathLogo: 'lib\src\assets\logo1.jpg',
            backgroundColor: Color (0xFFdb1a1a),   
            isExploreApp: true,  
            functionExploreApp: () {  
              // develop what they want the ExploreApp to do when the user clicks  
  },  
            isFooter: true,  
            widgetFooter: this.widgetFooter(),  
            typeLoginModel: listLogin,  
            isSignUp: false,  
      );  
  }  
  
  Widget widgetLoginFreshUserAndPassword() {  
    return LoginFreshUserAndPassword(  
              callLogin: (BuildContext _context, Function isRequest,  
                  String user, String password) {  
                isRequest(true);  
  
                Future.delayed(Duration(seconds: 2), () {  
                  print('-------------- function call----------------');  
                  print(user);  
                  print(password);  
                  print('-------------- end call----------------');  
  
                  isRequest(false);  
                });  
              },  
              logo: 'lib\src\assets\logo1.jpg',
              backgroundColor: Color (0xFFdb1a1a),   
              isFooter: false,  
            );  
  }  
  
  Widget widgetResetPassword() {  
    return LoginFreshResetPassword(  
      logo: 'lib\src\assets\logo1.jpg',
      backgroundColor: Color (0xFFdb1a1a),   
      funResetPassword: (BuildContext _context, Function isRequest, String email) {  
        isRequest(true);  
  
        Future.delayed(Duration(seconds: 2), () {  
          print('-------------- function call----------------');  
          print(email);  
          print('-------------- end call----------------');  
          isRequest(false);  
  
        });  
      },  
  
      isFooter: true,  
      widgetFooter: this.widgetFooter(),  
    );  
  }  
  
  Widget widgetFooter() {  
    return LoginFreshFooter(  
      logo: 'lib\src\assets\logo1.jpg',  
      text: 'Power by',  
      funFooterLogin: () {  
        // develop what they want the footer to do when the user clicks  
  },  
    );  
  }  

}